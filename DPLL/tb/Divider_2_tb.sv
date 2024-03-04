/***********************************************
#
#    Filename: Divider_2_tb.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-04 11:08:28
#    Last Modified: 2024-03-04 11:08:28
#
***********************************************/
module Divider_2_tb();

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

Divider_2#(
    .DIV_FACTOR(500)
)Divider_2_inst(
    .clk_in(clk_in),
    .rst_n(rst_n),
    .clk_o(clk_o)
);

`ifdef FSDB
    initial begin
        $fsdbDumpfile("Divider_2_tb.fsdb");
        $fsdbDumpvars("+mda");
    end

`endif

endmodule
