/***********************************************
#
#    Filename: Divider_1_tb.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-04 12:19:51
#    Last Modified: 2024-03-04 12:19:51
#
***********************************************/

module Divider_1_tb();

reg clk_in;
reg rst_n;

wire    clk_o;

initial begin
    clk_in = 0;
    rst_n = 0;
    #20
    rst_n = 1;
    #200000
    $stop(0);
end

always #10 clk_in = ~clk_in;

Divider_1#(
    .DIV_FACTOR(5)
)Divider_1_inst(
    .clk_in(clk_in),
    .rst_n(rst_n),
    .clk_o(clk_o)
);

`ifdef FSDB
    initial begin
        $fsdbDumpfile("Divider_1_tb.fsdb");
        $fsdbDumpvars("+mda");
    end

`endif

endmodule
