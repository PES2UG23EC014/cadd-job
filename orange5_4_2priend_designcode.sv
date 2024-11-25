module encoder4_2(input logic[3:0]a,output logic[1:0]y,output logic valid);
always_comb
    begin 
    casez (a)
    4'b0001,4'b001x,4'b01xx,4'b1xxx:y=2'b00;
    4'b0001,4'b001x,4'b01xx,4'b1xxx:y=2'b01;
    4'b0001,4'b001x,4'b01xx,4'b1xxx:y=2'b10;
    4'b0001,4'b001x,4'b01xx,4'b1xxx:y=2'b11;
    endcase
    end
assign valid = (a!= 4'b0000); 
endmodule
