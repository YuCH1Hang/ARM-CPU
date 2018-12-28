module ControlUnit (
    instruction_part,
    Reg2Loc, ALUSrc, MemtoReg, RegWrite,
    MemRead, MemWrite, Branch, ALUOp1, ALUOp0
);

    input [10:0] instruction_part;
    output Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp1, ALUOp0;
    reg [8:0] value;

    assign {Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp1, ALUOp0} = value;
     

    always @ (instruction_part) begin
    
        casex(instruction_part)
            11'b1xx0101x000: value = 9'b000100010;
            11'b11111000010: value = 9'b011110000;
            11'b11111000000: value = 9'b110001000;
            11'b10110100xxx: value = 9'b100000101;
            11'b0          : value = 9'b0;
        endcase

    end

endmodule