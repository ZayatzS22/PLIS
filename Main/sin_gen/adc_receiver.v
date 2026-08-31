		`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:07:12 06/24/2026 
// Design Name: 
// Module Name:    adc_receiver 
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

module adc_receiver (
    input             clk,
    input             sclk,
    input             reset,
    input             data_a,
    input             data_b,

    output reg        cs,
    output reg [15:0] data_out_a,
    output reg [15:0] data_out_b,
    output reg        data_ready
);
    reg sclk_prev;
    always @(posedge clk or posedge reset) begin
        if (reset)
            sclk_prev <= 1'b0;
        else
            sclk_prev <= sclk;
    end

    wire sclk_rise = sclk & ~sclk_prev;


    localparam [1:0] S_QUIET   = 2'd0,
                     S_CONVERT = 2'd1,
                     S_LATCH   = 2'd2;

    reg [1:0]  state;
    reg [3:0]  bit_cnt;
    reg [3:0]  quiet_cnt;
    reg [15:0] shift_a;
    reg [15:0] shift_b;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state      <= S_QUIET;
            cs         <= 1'b1;
            bit_cnt    <= 4'd0;
            shift_a    <= 16'd0;
            shift_b    <= 16'd0;
            data_out_a <= 16'd0;
            data_out_b <= 16'd0;
            data_ready <= 1'b0;
            quiet_cnt  <= 4'd0;
        end else begin
            data_ready <= 1'b0;

            case (state)
                S_QUIET: begin
                    cs <= 1'b1;
                    if (&quiet_cnt) begin
                        cs      <= 1'b0;
                        bit_cnt <= 4'd0;
                        state   <= S_CONVERT;
                    end else begin
                        quiet_cnt <= quiet_cnt + 4'd1;
                    end
                end

                S_CONVERT: begin
                    if (sclk_rise) begin
                        shift_a <= {shift_a[14:0], data_a};
                        shift_b <= {shift_b[14:0], data_b};

                        if (&bit_cnt)
                            state <= S_LATCH;
                        else
                            bit_cnt <= bit_cnt + 4'd1;
                    end
                end

                S_LATCH: begin
                    cs         <= 1'b1;
                    data_out_a <= shift_a;
                    data_out_b <= shift_b;
                    data_ready <= 1'b1;
                    quiet_cnt  <= 4'd0;
                    state      <= S_QUIET;
                end

                default: state <= S_QUIET;
            endcase
        end
    end
endmodule
