/***********************************************
#
#    Filename: add_tb.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-04 15:00:14
#    Last Modified: 2024-03-04 15:00:14
#
***********************************************/
module add_tb();

localparam WIDE_N = 12;
reg     clk;
reg     rst_n;
reg [WIDE_N-1:0]    add_i;

wire [WIDE_N-1:0]   add_o;

initial begin
    clk = 0;
    rst_n = 0;
    add_i = 0;
    #20
    rst_n = 1;
    add_i = 1000;
    #100000
    $stop(0);
end

always #10 clk = ~clk;

add#(
    .WIDE_N(12)
)add_inst(
    .clk(clk),
    .rst_n(rst_n),
    .add_i(add_i),
    .add_o(add_o)
);

`ifdef FSDB
    initial begin
        $fsdbDumpfile("add_tb.fsdb");
        $fsdbDumpvars;
    end

`endif

endmodule
