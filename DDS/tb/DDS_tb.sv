/***********************************************
#
#    Filename: DDS_tb.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-04 16:35:41
#    Last Modified: 2024-03-04 16:35:41
#
***********************************************/
module DDS_tb();

parameter WIDE = 12;
parameter CNT = 8;
parameter ROM_0 = "sine.dat";

reg     clk;
reg     rst_n;

reg [19:0]  f_ctrl;
reg [11:0]  p_ctrl;

wire [CNT-1:0]  out;

initial begin
    clk = 0;
    rst_n = 0;
    f_ctrl = 524288;
    p_ctrl = 3;
    #20
    rst_n = 1;
    #100_000_000
    $stop(0);
end

always #10 clk = ~clk;

DDS#(
    .F_WORD_N(32),
    .P_WORD_M(12)
)DDS_inst(
    .clk(clk),
    .rst_n(rst_n),
    .f_ctrl(f_ctrl),
    .p_ctrl(p_ctrl),
    .out(out)
);

`ifdef FSDB
    initial begin
        $fsdbDumpfile("DDS_tb.fsdb");
        $fsdbDumpvars;
    end

`endif

endmodule

