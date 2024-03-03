module ROM#(
    parameter CNT = 8,
    
    parameter ROM_0 = "sine.dat",
    parameter ROM_1 = "square.dat",
    parameter ROM_2 = "triangle.dat"

)(
    input       clk,
    input       rst_n,

    input       enable,
    input [1:0] addr,

    output reg [CNT - 1:0]  final_o
);

wire [1:0]       state;

reg [CNT - 1:0]    o_rom_0;
reg [CNT - 1:0]    o_rom_1;
reg [CNT - 1:0]    o_rom_2;

localparam DEEP = 2 ** (CNT + 1);

reg [CNT - 1:0]       rom_0 [DEEP - 1:0];
reg [CNT - 1:0]       rom_1 [DEEP - 1:0];
reg [CNT - 1:0]       rom_2 [DEEP - 1:0];
reg [CNT:0]     cnt;

initial begin
    $readmemh(ROM_0, rom_0);
    $readmemh(ROM_1, rom_1);
    $readmemh(ROM_2, rom_2);
end

assign state = addr;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        final_o <= 'b0;
    end else begin
        case(state)
            0:final_o <= 'b0;
            1:final_o <= o_rom_0;
            2:final_o <= o_rom_1;
            3:final_o <= o_rom_2;
            default:final_o <= 'b0;
        endcase
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        o_rom_0 <= 8'b0;
        o_rom_1 <= 8'b0;
        o_rom_2 <= 8'b0;
        cnt <= 0;
    end else begin
        if(cnt < DEEP) begin
            cnt <= cnt + 1;
            if(enable) begin
	 	        o_rom_0 <= rom_0[cnt];
	 	        o_rom_1 <= rom_1[cnt];
	 	        o_rom_2 <= rom_2[cnt];
                
            end else begin
                o_rom_0 <= 'b0;
                o_rom_1 <= 'b0;
                o_rom_2 <= 'b0;
            end
        end else begin
            cnt <= 0;
        end
    end
end

endmodule

