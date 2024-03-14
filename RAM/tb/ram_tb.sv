/***********************************************
#
#    Filename: ram_tb.sv
#
#    Author: ThirteenQ LJQ0 ljq1019395070@163.com
#    Description: ---
#    Create       : 2024-03-05 17:27:18
#    Last Modified: 2024-03-05 17:27:18
#
***********************************************/
module ram_tb();
reg     clk;
reg     rst_n;
reg     wr_en;
reg     re_en;
reg [8:0]   addr;
reg [8:0]   temp;
wire[31:0]  data_io;
reg [31:0]  ram;

initial begin
    clk = 1;
    rst_n = 0;

    wr_en = 0;
    re_en = 0;
    temp = 0;
    #20 
    rst_n = 1;

    wr_en = 1;
    #300  
    wr_en = 0;
    re_en = 1;
    $display(data_io);
    #400
    temp = 1;
    #500
    re_en = 1;
    wr_en = 1;

    #100_00
    $finish(0);
end 

always #5 clk = ~clk;

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        addr <= 0;
        ram <= 0;
    end else begin
        if(wr_en && !re_en) begin
            addr <= 132 + temp;
            ram <= 2555;
        end else if(!wr_en && re_en) begin
            addr <= 132 + temp;
            ram <= 11111;
        end else begin
            ram <= 121299;
        end 
    end
end



assign data_io = wr_en ? ram : 32'bZ;

ram#(
    .DATA_WIDE(32),
    .DEEP(512),
    .ADDR_WIDE()
)ram_inst(
    .clk(clk),
    .rst_n(rst_n),
    .wr_en(wr_en),
    .re_en(re_en),
    .addr(addr),
    .data_io(data_io)
);
    
`ifdef FSDB
    initial begin
        $fsdbDumpfile("ram_tb.fsdb");
        $fsdbDumpvars("+mda");
    end 
`endif
endmodule

