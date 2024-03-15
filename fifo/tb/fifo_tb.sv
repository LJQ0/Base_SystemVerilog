/***********************************************
#
#    Filename: fifo_tb.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-15 17:44:39
#    Last Modified: 2024-03-15 17:44:39
#
***********************************************/
module fifo_tb();
reg     clk, rst_n;
bit [2:0]   in[256];
//reg [2:0]   in;
wire [2:0]   out;
reg     wr, re;
wire    full,  empty;

initial begin
    clk = 0;
    rst_n = 0;
    wr = 0;
    re = 0;
    #20
    rst_n = 1;//start

    for(int i=0; i<255; i++) begin
        in[i] = i;
    end
    //in = 7;

    wr = 1;
    #1000
    re = 1;
    #1000
    $finish(0);
end

bit [7:0] cnt;

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= 0;
    end else begin
        cnt <= cnt + 1;
    end
end

always #1 clk = ~clk;

fifo_top#(
    .N(3),
    .DEEP(8)
)fifo_inst(
    .clk(clk),
    .rst_n(rst_n),
    .in(in[cnt]),
    //.in(in),
    .wr(wr),
    .re(re),
    .full(full),
    .empty(empty),
    .out(out)
);

`ifdef FSDB
    initial begin
        $fsdbDumpfile("fifo_tb.fsdb");
        $fsdbDumpvars("+mda");
    end

`endif

endmodule
