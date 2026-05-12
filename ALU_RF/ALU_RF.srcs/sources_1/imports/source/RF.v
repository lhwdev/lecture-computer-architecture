`timescale 100ps / 100ps

module RF(
    input [1:0] addr1,
    input [1:0] addr2,
    input [1:0] addr3,
    input [15:0] data3,
    input write,
    input clk,
    input reset,
    output [15:0] data1,
    output [15:0] data2
);

reg [15:0] file [3:0];

assign data1 = file[addr1];
assign data2 = file[addr2];

always @(posedge clk) begin
    if (reset) begin
        file[0] <= 16'b0;
        file[1] <= 16'b0;
        file[2] <= 16'b0;
        file[3] <= 16'b0;
    end else if (write) begin
        file[addr3] <= data3;
    end
    
end
    
endmodule
