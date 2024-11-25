module carry_propagate_adder_tb();
reg[3:0] a,b;
wire[3:0] sum;
carry_propagate_adder i1(a,b,sum);
initial
begin
        a=4'b0001; b=4'b0010; 
    #10 a=4'b0111; b=4'b0001;
    #10 a=4'b1010; b=4'b0101;
    #10 a=4'b1111; b=4'b0001;
    #10 a=4'b1100; b=4'b0011;
    #10 a=4'b0000; b=4'b0000; 
    #10 $stop;
end
endmodule
