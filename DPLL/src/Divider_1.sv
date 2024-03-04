/***********************************************
#
#    Filename: Divider_1.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: 奇分频
#    Create       : 2024-03-04 12:11:50
#    Last Modified: 2024-03-04 12:11:50
#
***********************************************/
module Divider_1#(
    parameter DIV_FACTOR        = 5
)(
    input       clk_in,
    input       rst_n,

    output reg  clk_o
);

reg [20:0] cnt;

always@(clk_in or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= 0;
        clk_o <= 1'b1;
    end else begin
        if(cnt == DIV_FACTOR - 1) begin
            cnt <= 0;
            clk_o <= ~clk_o;
        end else begin
            cnt <= cnt + 1;
        end
    end
end

endmodule
        
