module prefix_adder32_tb();
reg [31:0] a, b;
wire [31:0] sum;
wire cout;
prefix_adder32 dut(a,b,sum,cout);

initial
  begin
      a = 32'h00000000; b = 32'h00000000; #10;
      a = 32'h00000001; b = 32'h00000001; #10;
      a = 32'hFFFFFFFF; b = 32'h00000001; #10;
      a = 32'h12345678; b = 32'h87654321; #10;
      a = 32'hAAAAAAAA; b = 32'h55555555; #10;
      a = 32'h0F0F0F0F; b = 32'hF0F0F0F0; #10;
      a = 32'hFFFF0000; b = 32'h0000FFFF; #10;
      a = 32'h12345678; b = 32'hABCDEF01; #10;
      a = 32'h00000000; b = 32'hFFFFFFFF; #10;
      a = 32'h80000000; b = 32'h80000000; #10;
  end
endmodule
