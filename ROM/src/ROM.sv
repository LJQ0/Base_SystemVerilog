module ROM(
    input       clk,
    input       rst_n,

    output reg [7:0]    o_sine,
    output reg [7:0]    o_squ,
    output reg [7:0]    o_tri
);

// parameter
parameter SINE_FILE     = "sine.dat";
parameter SQUARE_FILE   = "square.dat";
parameter TRI_FILE      = "triangle.dat";

reg [7:0]       sine_rom [511:0];
reg [7:0]       square_rom [511:0];
reg [7:0]       tri_rom [511:0];
reg [8:0]       cnt;

initial begin
    $readmemh(SINE_FILE, sine_rom);
    $readmemh(SQUARE_FILE, square_rom);
    $readmemh(TRI_FILE, tri_rom);
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        o_sine <= 8'b0;
        o_squ <= 8'b0;
        o_tri <= 8'b0;
        cnt <= 0;
    end else begin
        if(cnt < 512) begin
	        o_sine <= sine_rom[cnt];
	        o_squ <= square_rom[cnt];
	        o_tri <= tri_rom[cnt];
	        cnt <= cnt + 1;
        end else begin
            cnt <= 0;
        end
    end
end

endmodule

