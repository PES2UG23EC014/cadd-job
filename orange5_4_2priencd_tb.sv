module encoder4_2_tb();
reg [3:0]a;
wire [1:0]y;
wire valid;
encoder4_2 dut(a,y,valid);
initial
    begin
    a=4'b0000;
    #10; a=4'b0001;
    #10; a=4'b0010;
    #10; a=4'b0100;
    #10; a=4'b1000;
    #10; a=4'b1000;
    #10; a=4'b1100;
    #10; a=4'b1110;
    #10; a=4'b1111;
    end
endmodule
