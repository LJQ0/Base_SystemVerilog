/***********************************************
#
#    Filename: counter_top.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-14 17:36:57
#    Last Modified: 2024-03-14 17:36:57
#
***********************************************/
module counter_top#(
    parameter N = 8
)(
    input       clk,
    input       rst_n,
    input       syn_clr, load, add_en, keep,
    input [N-1:0]   in_num,
    output reg [N-1:0]  out_num,
    output reg     max_tick, min_tick
);

reg [N-1:0]     cnt_0;//初值
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt_0 <= 0;
    end else begin
        if(load) begin
            cnt_0 <= in_num;
        end else begin
            if(add_en) begin
                cnt_0 <= 0;
            end else begin
                cnt_0 <= 2 ** N - 1;
            end
        end
    end
end

reg [N-1:0]     cnt;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= 0;
        max_tick <= 0;
        min_tick <= 0;
    end else begin
        if(!keep) begin
            if(!syn_clr) begin
                if(add_en) begin
                    if(cnt == (2**N-1)) begin
                        cnt <= cnt_0;
                        max_tick <= 1;
                    end else begin
                        cnt <= cnt + 1;
                        max_tick <= 0;
                    end
                end else begin
                    if(cnt == 0) begin
                        cnt <= cnt_0;
                        min_tick <= 1;
                    end else begin
                        cnt <= cnt - 1;
                        min_tick <= 0;
                    end
                end
            end else begin
                cnt <= 0;
                max_tick <= 0;
                min_tick <= 0;
            end
        end else begin
            cnt <= cnt;
            max_tick <= 0;
            min_tick <= 0;
        end
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        out_num <= 0;
    end else begin
        out_num <= cnt;
    end 
end


endmodule
                    


