/***********************************************
#
#    Filename: DDS.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-04 15:28:58
#    Last Modified: 2024-03-04 15:28:58
#
***********************************************/
module DDS#(
    parameter F_WORD_N = 32,
    parameter P_WORD_M = 12 
)(
    input       clk,
    input       rst_n,

    input [F_WORD_N-P_WORD_M-1:0]    f_ctrl,
    input [P_WORD_M-1:0]    p_ctrl,

    output [7:0]    out
);

reg [P_WORD_M-1:0]   rom_read;
reg [F_WORD_N-P_WORD_M:0]     cnt_f;
reg [P_WORD_M-1:0]          cnt_p;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt_f <= 0;
        cnt_p <= 0;
    end else begin
        if(cnt_f[F_WORD_N-P_WORD_M] == 1'b1) begin
            cnt_f <= 'b0;
            cnt_p <= cnt_p + 1;
        end else begin
            cnt_f <= cnt_f + f_ctrl;
        end 
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rom_read <= 0;
    end else begin
        rom_read <= p_ctrl + cnt_p;
    end 
end

rom#(
    .CNT(8),
    .WIDE(P_WORD_M),
    .ROM_0("sine.dat")
)rom_inst(
    .clk(clk),
    .rst_n(rst_n),
    .enable(1),
    .addr(rom_read),
    .final_o(out)
);

endmodule


