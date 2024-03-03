module ROM_tb();

reg     clk;
reg     rst_n;
reg     enable;
reg [1:0]   addr;

wire [7:0]      final_o;

initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    addr = 2'b00;
    enable = 1'b0;
    #20;
    rst_n = 1'b1;
    #5000
    enable = ~enable;
    addr = 2'b01;
    #5000
    enable = ~enable;
    #3000
    enable = ~enable;
    addr = 2'b10;
    #3000
    enable = ~enable;
    #3000
    enable = ~enable;
    addr = 2'b11;
    #6000
    $stop(0);
end

always #1 clk = ~clk;

ROM #(
    .CNT(8),
    .ROM_0("sine.dat"),
    .ROM_1("square.dat"),
    .ROM_2("triangle.dat")
)ROM_inst(
    .clk        (clk),
    .rst_n      (rst_n),
    .enable     (enable),
    .final_o    (final_o),
    .addr       (addr)
);

`ifdef FSDB
    initial begin
        $fsdbDumpfile("ROM_tb.fsdb");
        $fsdbDumpvars("+mda");//Dump 多维数组
    end

`endif

endmodule

