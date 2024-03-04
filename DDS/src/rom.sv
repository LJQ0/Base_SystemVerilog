/***********************************************
#
#    Filename: rom.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-04 16:14:24
#    Last Modified: 2024-03-04 16:14:24
#
***********************************************/
module rom#(
    parameter CNT = 8,//数据线宽
    parameter WIDE = 12,//地址线位宽
    //文件存储位置，注意把文件同时也放到仿真目录下
    parameter ROM_0 = "sine.dat"

)(
    input       clk,
    input       rst_n,

    input       enable,
    input [WIDE-1:0] addr,

    output reg [CNT - 1:0]  final_o
);

//数据深度
localparam DEEP = 2 ** WIDE;

//定义寄存器存放数据
reg [CNT - 1:0]       rom_0 [DEEP - 1:0];

//将文件读入定义好的寄存器
initial begin
    $readmemh(ROM_0, rom_0);
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        final_o <= 0;
    end else begin
        if(enable) begin
            final_o <= rom_0[addr];
        end else begin
            final_o <= 'b0;
        end
    end
end

endmodule

