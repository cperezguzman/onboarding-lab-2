/**
  @brief A fibonacci linear feedback shift register module

  @input clk    clock
  @input nReset active-low reset
  @input init   initial value following a reset
  @output out   current output
*/
module Exercise2 (
    input clk,
    input nReset,
    input [15:0] init,
    output logic [15:0] out
);
always @(posedge clk or negedge nReset) begin
	if (nReset == 0) out <= init;
	else begin
		out[15:1] <= out[14:0];
		out[0] <= out[15] ^ out[13] ^ out[12] ^ out[10];
	end
end
endmodule
