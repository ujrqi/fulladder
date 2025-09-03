`timescale 10ns / 10ps
module fulladder_tb();
    reg A,B,Cin;
    wire S,Cout;

    fulladder uut(
        .X1(A),
        .X2(B),
        .Cin(Cin),
        .Cout(Cout),
        .S(S)
    );
    initial begin
        $dumpfile("fulladder_tb.vcd");
        $dumpvars(0, fulladder_tb);

        A=0;
        B=0;
        Cin=0;
        #5;

        A=0;
        B=0;
        Cin=1;
        #5;

        A=0;
        B=1;
        Cin=0;
        #5;

        A=0;
        B=1;
        Cin=1;
        #5;

        A=1;
        B=0;
        Cin=0;
        #5;

        A=1;
        B=0;
        Cin=1;
        #5;

        A=1;
        B=1;
        Cin=0;
        #5;

        A=1;
        B=1;
        Cin=1;
        #5;
    end
endmodule

