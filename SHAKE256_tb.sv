`timescale 1ps/1ps

module SHAKE256_tb;

    logic clock, reset;
    logic [1087:0] message;
    logic [10:0] length;
    logic busy, full, squeezed;
    logic [1087:0] hash;
	 logic [9:0] clock_count;

    SHAKE256 dut (
        .clock(clock),
        .reset(reset),
        .message(message),
        .length(length),
        .busy(busy),
        .full(full),
        .squeezed(squeezed),
        .hash(hash)
    );
	 
	 always @ (posedge clock) clock_count = clock_count + 1;
	 
    initial forever #1 clock = ~clock;
	 
    initial begin
	     clock_count = 0;
        clock = 0;
        reset = 0;
        message = 'ha3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3;
        length = 1600;
        $dumpfile("SHAKE256.vcd");
        $dumpvars;
        #2;
        reset = 1;
		  $display("message =");
        $display("%h", message);
        $display;
		  #2;
        message = {512'ha3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3, 576'h0};
        length = 512;
		  $display("message =");
        $display("%h", message);
        $display("length = 1600");
        $display;
		  
        @(posedge squeezed);
		  $display("hash =");
        $display("%h", hash);
        $display("squeezed = %b", squeezed);
        @(posedge squeezed);
		  $display("hash =");
        $display("%h", hash);
        $display("squeezed = %b", squeezed);

        #1;
		  $finish;
    end

endmodule