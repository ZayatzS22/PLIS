`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    09:08:21 12/25/2025
// Design Name:
// Module Name:    sin_gen
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module sin_gen(
    input clk,
    input reset,
	 input adc_data_a,
	 input adc_data_b,

    output [9:0] signal_out,
	 output control,
	 output out_clk_p, // Для ЦАП
	 output out_clk_n,
	 output takt_p, // Для аналогово генератора синуса
	 output takt_n,
	 output adc_clk, // Для АЦП
    output led_ds4,
	 output adc_cs,
	 output uart_tx
    );


parameter PHASE_WIDTH = 24;
parameter LUT_ADDR_WIDTH = 8;
//parameter FTW = 24'd1_553_446;  // Frequency Tuning Word, настроенный под частоту 625КГц 388_361
parameter FTW = 24'd62_138; //Для периода синусоиды

parameter [7:0] SYNC_MARKER = 8'hA5;
parameter WIDTH_TAKT = 5;

reg [WIDTH_TAKT:0] counter; // Тактовый сигнал для аналогово генератора синуса 27MHz / 43
reg [PHASE_WIDTH-1:0] phase_acc;

wire [9:0] sin_out;
wire [9:0] cos_out;
wire [15:0] adc_out_a;
wire [15:0] adc_out_b;
wire adc_ready;

wire out_clk;
reg out_takt;

always @(posedge clk) begin
	if (reset) begin
		phase_acc <= 0;
		counter <= 0;
		out_takt <= 1'b0;
	end
	else begin
		phase_acc <= phase_acc + FTW;

	   if (counter == 6'd21) begin
			counter <= 0;
			out_takt <= ~out_takt;
	   end else begin
			counter <= counter + 1'b1;
	   end
	end
end

sine_lut sine_lut_inst(
	.a(phase_acc[PHASE_WIDTH-1 : PHASE_WIDTH - LUT_ADDR_WIDTH]),
	.spo(sin_out)
);

cose_lut cose_lut_inst(
	.a(phase_acc[PHASE_WIDTH-1 : PHASE_WIDTH - LUT_ADDR_WIDTH]),
	.spo(cos_out)
);

max5853_dual_cntrl max5853_inst(
	.clk(clk),
	.reset(reset),
	.data_a(adc_out_a[13:4]),
	.data_b(adc_out_b[13:4]),
	.dac_clk(out_clk),
	.dac_data(signal_out),
	.dac_ctrl(control)
);

adc_receiver adc_receiver_inst(
   .clk(clk),
	.sclk(out_takt),
	.reset(reset),
	.data_a(adc_data_a),
	.data_b(adc_data_b),
	.cs(adc_cs),
	.data_out_a(adc_out_a),
	.data_out_b(adc_out_b),
	.data_ready(adc_ready)
);

assign adc_clk = out_takt;
assign takt_p = out_takt;
assign takt_n = ~out_takt;

assign out_clk_p = out_clk;
assign out_clk_n = ~out_clk;
assign led_ds4 = ~reset;


wire tx_done;
reg [15:0] adc_a;
reg [15:0] adc_b;
reg [1:0]  byte_idx;
reg [6:0]  frame_count;
reg        tx_start;
reg [7:0]  uart_data;

reg tx_done_d;
wire tx_done_rise = tx_done & ~tx_done_d;

localparam [2:0]
	  S_SYNC_LOAD = 3'd0,
	  S_SYNC_WAIT = 3'd1,
	  S_IDLE = 3'd2,
     S_DATA_LOAD = 3'd3,
     S_DATA_WAIT = 3'd4;
reg [2:0] state;

always @(posedge clk) begin
    if (reset) begin
        uart_data <= 8'd0;
        byte_idx  <= 2'd0;
		  frame_count <= 7'd0;
        tx_start  <= 1'b0;
        adc_a     <= 16'd0;
        adc_b     <= 16'd0;
        state     <= S_SYNC_LOAD;
        tx_done_d <= 1'b1;
    end else begin
        tx_done_d <= tx_done;
        tx_start  <= 1'b0;

		  case (state)
				S_SYNC_LOAD: begin
					 uart_data <= SYNC_MARKER;
					 tx_start  <= 1'b1;
					 state     <= S_SYNC_WAIT;
				end

				S_SYNC_WAIT: begin
					 if (tx_done_rise) begin
					 state <= S_IDLE;
					 end
				end



            S_IDLE: begin
                if (adc_ready) begin
                    adc_a    <= adc_out_a;
                    adc_b    <= adc_out_b;
                    byte_idx <= 2'd0;
                    state    <= S_DATA_LOAD;
                end
            end

            S_DATA_LOAD: begin
                case (byte_idx)
                    2'd0: uart_data <= adc_a[7:0];
                    2'd1: uart_data <= adc_a[15:8];
                    2'd2: uart_data <= adc_b[7:0];
                    2'd3: uart_data <= adc_b[15:8];
                endcase
                tx_start <= 1'b1;
                state    <= S_DATA_WAIT;
            end

            S_DATA_WAIT: begin
                if (tx_done_rise) begin
                    if (byte_idx == 2'd3) begin
						  if (frame_count == 7'd127) begin
								frame_count <= 7'd0;
                        state <= S_SYNC_LOAD;
                    end else begin
								frame_count <= frame_count + 7'd1;
								state       <= S_IDLE;
								end
						  end else begin
                        byte_idx <= byte_idx + 2'd1;
                        state    <= S_DATA_LOAD;
                    end
                end
            end

            default: state <= S_IDLE;
        endcase
    end
end

uart_transmitter uart_inst(
    .clk(clk),
    .rst(reset),
    .tx_data(uart_data),
    .tx_start(tx_start),
    .tx_pin(uart_tx),
    .tx_done(tx_done)
);

endmodule
