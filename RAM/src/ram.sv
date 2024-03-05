/***********************************************
#
#    Filename: ram.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-05 16:39:16
#    Last Modified: 2024-03-05 16:39:16
#
***********************************************/
module ram#(
    parameter DATA_WIDE     = 32,//data wide 
    parameter DEEP          = 512,//data deep
    parameter ADDR_WIDE     = $clog2(DEEP)

)(
    input       clk,
    input       rst_n,

    input       wr_en,
    input       re_en,
    input [ADDR_WIDE-1:0]   addr,

    inout [DATA_WIDE-1:0]   data_io
);

//localparam ADDR_WIDE     = $clog2(DEEP);

reg [DATA_WIDE-1:0]     ram [ADDR_WIDE-1:0];//定义存储器


reg flag_re;
reg [1:0]       state;//read or write
localparam WRITE = 2'b10, READ = 2'b01;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        state <= 2'b00;
    end else begin
        state <= {wr_en, re_en};
    end 
end

assign data_io = ((state == READ)&&flag_re) ? ram[addr] : 32'bZ;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ram[addr] <= 'b0;
        flag_re <= 'b0;
    end else begin
        if(state == WRITE) begin
            ram[addr] <= data_io;
            flag_re <= 'b0;
        end else begin
            flag_re <= 'b1;
        end
    end
end



endmodule
