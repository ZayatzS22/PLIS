`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:27 04/30/2026 
// Design Name: 
// Module Name:    max5853_dual_cntrl 
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
module max5853_dual_cntrl (
    input  wire        clk,
    input  wire        reset,
    input  wire [9:0]  data_a,
    input  wire [9:0]  data_b,
    output reg         dac_ctrl,
    output reg  [9:0]  dac_data,
    output reg         dac_clk
);
    reg [5:0]  control_counter;
    reg        run_mode;
    reg [1:0]  clk_div_cnt;
    localparam [5:0] CFG_THRESHOLD = 63;

    always @(posedge clk) begin
        if (reset) begin
            dac_ctrl        <= 1'b0;
            dac_data        <= 10'b01_1000_0000; 
            dac_clk         <= 1'b0;
            control_counter <= 6'd0;
            run_mode        <= 1'b0;
            clk_div_cnt     <= 2'd0;
        end else begin
            clk_div_cnt <= clk_div_cnt + 1'b1;
            dac_clk <= clk_div_cnt[1];
            
            if (!run_mode) begin
                if (control_counter == CFG_THRESHOLD) begin
                    run_mode <= 1'b1;
                    dac_ctrl <= 1'b1;
                end else begin
                    control_counter <= control_counter + 1'b1;
                end
            end else begin
                if (clk_div_cnt == 2'd1) dac_data <= data_a;
                if (clk_div_cnt == 2'd3) dac_data <= data_b;
            end
        end
    end

endmodule

