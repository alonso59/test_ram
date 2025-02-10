module ram(
input clk,
input [3:0]d_in,
input [1:0]addr_in,
output [3:0]d_out
);

reg [3:0] reg_mem [3:0];

always @(posedge clk) begin
    reg_mem[addr_in] <= d_in;
end

assign d_out = reg_mem[addr_in];

endmodule