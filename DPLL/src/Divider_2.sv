/***********************************************
#
#    Filename: Divider_2.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description:偶分频 最高支持100w分频
#    Create       : 2024-03-04 10:24:50
#    Last Modified: 2024-03-04 10:24:50
#
***********************************************/
module Divider_2#(
    parameter DIV_FACTOR    = 4
)(
    input       clk_in,
    input       rst_n,

    output reg  clk_o
);

localparam CNT = DIV_FACTOR / 2;

reg [20:0] cnt;

always@(posedge clk_in or negedge rst_n) begin
    if(!rst_n) begin
        clk_o <= 0;
        cnt <= 0;
    end else begin
        if(cnt == CNT - 1) begin
            cnt <= 0;
            clk_o <= ~clk_o;
        end else begin
            cnt <= cnt + 1;
        end
    end
end

endmodule
