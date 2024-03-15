/***********************************************
#
#    Filename: fifo_top.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-15 10:49:35
#    Last Modified: 2024-03-15 10:49:35
#
***********************************************/
module fifo_top#(
    parameter N = 3,
    parameter DEEP = 8
)(
    input       clk, rst_n,
    input [N-1:0]   in,
    input       wr, re,
    output      full, empty,
    output reg [N-1:0]  out
);

reg [N-1:0] arm[2**DEEP-1:0];//arm
reg [DEEP:0]    cnt_w;
reg [DEEP:0]    cnt_r;

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt_w <= 0;
    end else begin
        if(wr) begin//write
            if(cnt_w[DEEP]) begin
                cnt_w <= 0;
            end else begin
                cnt_w <= cnt_w + 1;
            end
        end
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt_r <= 0;
    end else begin
        if(re) begin//read
            if(cnt_r[DEEP]) begin
                cnt_r <= 0;
            end else begin
                cnt_r <= cnt_r + 1;
            end
        end
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        arm[cnt_w] <= 0;
    end else begin
        if(wr) begin
            arm[cnt_w] <= in;
        end
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        out <= 0;
    end else begin
        if(re) begin
            out <= arm[cnt_r];
        end else begin
            out <= 0;
        end
    end
end

assign full = cnt_w[DEEP];
assign empty = cnt_r[DEEP];

endmodule

            


