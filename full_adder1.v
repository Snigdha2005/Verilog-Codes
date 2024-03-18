module full_adder(A, B, Cin, Cout, S);
	input A,B,Cin;
	output Cout, S;
	assign S = A^B^Cin;
	assign Cout = (A&B) | (B&Cin) | (Cin&A);
	endmodule	
