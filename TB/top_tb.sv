/***********************************************
#
#    Filename: top_tb.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-05 16:30:40
#    Last Modified: 2024-03-05 16:30:40
#
***********************************************/
`include "./fsdb.sv"
module top_tb();


reg     clk;
reg     rst_n;

bit [3:0]      g_o;

initial begin
    clk = 'b0;
    rst_n = 'b0;
    #20
    rst_n = 'b1;
    #200
    $finish(0);
end 

always #5 clk = ~clk;

always@(posedge clk) begin
    $displayb(g_o);
end 


top top_inst(
    .clk(clk),
    .rst_n(rst_n),
    .g_o(g_o)
);

//initial begin
    //bit [7:0] md[2][9];
    //foreach(md[i,j]) begin
        //md[i][j] = i * 10 + j;
    //end

    //foreach(md[i,j]) begin
        //$displayb(md[i][j]);
    //end
//end
//int j = 1,
//q2[$] = {3, 4},
//q[$] = {0, 2, 5};
//initial begin
    //q.insert(1,j);
    //q.delete(1);
    //q.push_front(6);
    //j = q.pop_back;
    //q.push_back(8);
    //j = q.pop_front;
    //q.push_front(4);
    //foreach(q[i]) $display(q[i]);
    //q.delete();
    
//end
//initial begin
    //bit [31:0] stc[5] = '{5{5}};
    //$displayh(stc,,
              //stc[0],,
              //stc[0][2:0]);
//end 
//`ifdef FSDB
    //initial begin
        //$fsdbDumpfile("tb.fsdb");
        //$fsdbDumpvars("+mda");
    //end

//`endif

endmodule
