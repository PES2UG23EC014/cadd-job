module bcd_adder_tb();
reg [7:0]a,b;
reg cin;
wire [7:0]sum;
wire cout;
bcd_adder dut(a,b,cin,sum,cout);
initial
    begin
    a=8'b0000_0000;b=8'b0000_0000; cin=0; #10;
    a=8'b0000_0001;b=8'b1001_1001; cin=0; #10;
    a=8'b0101_0000;b=8'b0100_1001; cin=1; #10;
    a=8'b0000_1001;b=8'b0000_0001; cin=1; #10;
    a=8'b1001_1001;b=8'b1001_1001; cin=0; #10;
    a=8'b1001_1001;b=8'b1001_1001; cin=1; 
    $stop;   
    end
endmodule
