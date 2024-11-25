module bcd_adder(a,b,cin,sum,cout);
input logic [7:0]a,b;
input logic cin;
output logic [7:0]sum;
output logic cout;
always_comb
    begin
    logic [8:0]s;
    s=a+b+cin;
    if (s>9)
    sum=s+6;
    else
    sum=s;
 cout=(s>9)?1:0;
    end
endmodule
