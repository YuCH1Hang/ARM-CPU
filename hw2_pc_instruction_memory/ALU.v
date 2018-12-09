module ALU(input_data_1, input_data_2, input_opcode, output_data, output_zero);

	input [63:0] input_data_1;
	input [63:0] input_data_2;
	input [3:0] input_opcode;

	output reg[63:0] output_data;
	output reg[63:0] output_zero;

	always @ (*) begin
		output_zero = 0;

		case(input_opcode)
			4'b0010: output_data = input_data_1 + input_data_2;
		default
			output_data = 0;
		endcase
	end

endmodule
