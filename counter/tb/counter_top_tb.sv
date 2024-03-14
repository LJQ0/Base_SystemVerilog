/***********************************************
#
#    Filename: counter_top_tb.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-14 18:06:16
#    Last Modified: 2024-03-14 18:06:16
#
***********************************************/
module counter_top_tb();

reg     clk, rst_n;
reg     syn_clr, load, add_en, keep;
reg [7:0]   in_num;
wire [7:0]  out_num;
wire        max_tick, min_tick;

initial begin
    clk = 0;
    rst_n = 0;
    syn_clr = 0;
    load = 0;
    add_en = 1;
    keep = 0;
    in_num = 0;
    #20 
    rst_n = 1;
    #1000
    syn_clr = 1;
    #20
    syn_clr = 0;
    load = 1;
    in_num = 155;
    #1000
    syn_clr = 1;
    #20
    syn_clr = 0;
    load = 0;
    add_en = 0;
    #1000
    keep = 1;
    #500
    $finish(0);
end

always #1 clk = ~clk;

counter_top#(
    .N(8)
)counter_top_inst(
    .clk(clk),
    .rst_n(rst_n),
    .syn_clr(syn_clr),
    .load(load),
    .add_en(add_en),
    .keep(keep),
    .in_num(in_num),
    .out_num(out_num),
    .max_tick(max_tick),
    .min_tick(min_tick)
);

`ifdef FSDB
    initial begin
        $fsdbDumpfile("counter_top_tb.fsdb");
        $fsdbDumpvars;
    end
`endif
    
endmodule
