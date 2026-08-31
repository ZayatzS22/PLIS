module uart_transmitter #(
    parameter CLK_FREQ = 27_000_000, // Частота тактового генератора SP605 (27 МГц)
    parameter BAUD_RATE = 115_200,    // Скорость передачи
    parameter DATA_BITS = 8           // Количество бит данных
)(
    input  wire             clk,
    input  wire             rst,
    input  wire [DATA_BITS-1:0] tx_data,
    input  wire             tx_start,
    output reg              tx_pin,
    output reg              tx_done
);

    // Расчет количества тактов на один бит
    localparam CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;

    // Состояния конечного автомата
    localparam IDLE  = 2'b00;
    localparam START = 2'b01;
    localparam DATA  = 2'b10;
    localparam STOP  = 2'b11;

    reg [1:0] state;
    reg [7:0] clk_count;
    reg [2:0] bit_index;
    reg [DATA_BITS-1:0] tx_data_reg;

    always @(posedge clk) begin
        if (rst) begin
            state      <= IDLE;
            tx_pin     <= 1'b1; // Линия UART в покое имеет высокий уровень
            tx_done    <= 1'b0;
            clk_count  <= 0;
            bit_index  <= 0;
            tx_data_reg<= 0;
        end else begin
            case (state)
                IDLE: begin
                    tx_done <= 1'b0;
                    if (tx_start) begin
                        tx_data_reg <= tx_data;
                        state <= START;
                        clk_count <= 0;
                    end
                end

                START: begin
                    tx_pin <= 1'b0; // Стартовый бит
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        clk_count <= 0;
                        state <= DATA;
                        bit_index <= 0;
                    end else begin
                        clk_count <= clk_count + 1'd1;
                    end
                end

                DATA: begin
                    tx_pin <= tx_data_reg[bit_index]; // Передача от младшего бита к старшему
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        clk_count <= 0;
                        if (bit_index == DATA_BITS - 1) begin
                            state <= STOP;
                        end else begin
                            bit_index <= bit_index + 1;
                        end
                    end else begin
                        clk_count <= clk_count + 1'd1;
                    end
                end

                STOP: begin
                    tx_pin <= 1'b1; // Стоповый бит
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        tx_done <= 1'b1;
                        state <= IDLE;
                    end else begin
                        clk_count <= clk_count + 1'd1;
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end
endmodule
