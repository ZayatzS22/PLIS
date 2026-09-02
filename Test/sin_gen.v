`timescale 1ns / 1ps

module sin_gen(
    input  wire clk,
    input  wire reset,

    output wire led_ds4,
    output wire uart_tx
);

    parameter [15:0] SYNC_MARKER = 16'hFFFF;

    assign led_ds4 = ~reset;

    wire tx_done;
    wire tx_done_rise;
    reg tx_done_d;

    reg [15:0] adc_a;
    reg [15:0] adc_b;

    reg [13:0] test_value;

    reg [1:0] byte_idx;
    reg [6:0] frame_count;
    reg sync_byte_idx;

    reg       tx_start;
    reg [7:0] uart_data;

    assign tx_done_rise = tx_done & ~tx_done_d;

    localparam [2:0]
        S_SYNC_LOAD = 3'd0,
        S_SYNC_WAIT = 3'd1,
        S_IDLE      = 3'd2,
        S_DATA_LOAD = 3'd3,
        S_DATA_WAIT = 3'd4;

    reg [2:0] state;

    always @(posedge clk) begin
        if (reset) begin
            uart_data     <= 8'd0;
            byte_idx      <= 2'd0;
            frame_count   <= 7'd0;
            sync_byte_idx <= 1'b0;
            tx_start      <= 1'b0;

            adc_a         <= 16'd0;
            adc_b         <= 16'd0;

            test_value    <= 14'h0000;

            tx_done_d     <= 1'b1;
            state         <= S_SYNC_LOAD;

        end else begin
            tx_done_d <= tx_done;
            tx_start  <= 1'b0;

            case (state)

                S_SYNC_LOAD: begin
                    if (sync_byte_idx == 1'b0)
                        uart_data <= SYNC_MARKER[7:0];
                    else
                        uart_data <= SYNC_MARKER[15:8];

                    tx_start <= 1'b1;
                    state    <= S_SYNC_WAIT;
                end

                S_SYNC_WAIT: begin
                    if (tx_done_rise) begin
                        if (sync_byte_idx == 1'b0) begin
                            sync_byte_idx <= 1'b1;
                            state         <= S_SYNC_LOAD;
                        end else begin
                            sync_byte_idx <= 1'b0;
                            byte_idx      <= 2'd0;
                            state         <= S_IDLE;
                        end
                    end
                end

                S_IDLE: begin
                    adc_a <= {2'b00, test_value};
                    adc_b <= {2'b00, (14'h3FFF - test_value)};

                    byte_idx <= 2'd0;
                    state    <= S_DATA_LOAD;
                end

                S_DATA_LOAD: begin
                    case (byte_idx)
                        2'd0: uart_data <= adc_a[7:0];
                        2'd1: uart_data <= adc_a[15:8];
                        2'd2: uart_data <= adc_b[7:0];
                        2'd3: uart_data <= adc_b[15:8];
                        default: uart_data <= 8'd0;
                    endcase

                    tx_start <= 1'b1;
                    state    <= S_DATA_WAIT;
                end

                S_DATA_WAIT: begin
                    if (tx_done_rise) begin
                        if (byte_idx == 2'd3) begin
                            if (test_value == 14'h3FFF)
                                test_value <= 14'h0000;
                            else
                                test_value <= test_value + 14'd1;

                            if (frame_count == 7'd127) begin
                                frame_count   <= 7'd0;
                                byte_idx      <= 2'd0;
                                sync_byte_idx <= 1'b0;
                                state         <= S_SYNC_LOAD;
                            end else begin
                                frame_count <= frame_count + 7'd1;
                                byte_idx    <= 2'd0;
                                state       <= S_IDLE;
                            end
                        end else begin
                            byte_idx <= byte_idx + 2'd1;
                            state    <= S_DATA_LOAD;
                        end
                    end
                end

                default: begin
                    state <= S_SYNC_LOAD;
                end

            endcase
        end
    end

    uart_transmitter #(
        .CLK_FREQ  (27_000_000),
        .BAUD_RATE (115_200),
        .DATA_BITS (8)
    ) uart_inst (
        .clk      (clk),
        .rst      (reset),
        .tx_data  (uart_data),
        .tx_start (tx_start),
        .tx_pin   (uart_tx),
        .tx_done  (tx_done)
    );

endmodule
