module ALU_tb;
  reg [3:0] A, B;
  reg [2:0] sel;
  wire [3:0] out;
  ALU al1(A, B, sel, out);
  initial begin
    $monitor("A=%b, B=%b, then ALU out=%b", A, B, out);
    A = 4'b0001; B = 4'b1101; sel = 3'b001; #5;
    A = 4'b0001; B = 4'b1101; sel = 3'b000; #5;
    A = 4'b0011; B = 4'b1001; sel = 3'b010; #5;
    A = 4'b0011; B = 4'b1100; sel = 3'b011; #5;
    A = 4'b1001; B = 4'b1011; sel = 3'b100; #5;
    A = 4'b0001; B = 4'b1101; sel = 3'b101; #5;
    A = 4'b1101; sel = 3'b110; #5;
    $stop;
  end
endmodule
