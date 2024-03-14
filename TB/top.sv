/***********************************************
#
#    Filename: top.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-05 16:30:20
#    Last Modified: 2024-03-05 16:30:20
#
***********************************************/
module top(
    input       clk,
    input       rst_n,
    
    output reg [3:0]    g_o
);

reg [3:0]       cnt;

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= 0;
    end else begin
        cnt <= cnt + 1;
    end 
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        g_o <= 0;
    end else begin
        g_o <= cnt ^ (cnt >> 1);
    end
end

endmodule
    
