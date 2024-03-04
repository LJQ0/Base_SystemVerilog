/***********************************************
#
#    Filename: add.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: 累加器
#    Create       : 2024-03-04 14:50:05
#    Last Modified: 2024-03-04 14:50:05
#
***********************************************/
module add#(
    parameter WIDE_N = 12
)(
    input       clk,
    input       rst_n,
    
    input [WIDE_N-1:0]     add_i,

    output [WIDE_N-1:0]    add_o
);

reg [WIDE_N-1:0]     cnt;

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= 0;
    end else begin
        if(cnt == add_i) begin
            cnt <= 0;
        end else begin
            cnt <= cnt + 1;
        end
    end
end

assign add_o = cnt;

endmodule


