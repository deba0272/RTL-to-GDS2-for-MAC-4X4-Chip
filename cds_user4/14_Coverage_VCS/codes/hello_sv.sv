module hello;

initial begin
$display("==========================");
$strobe("Hi");
$monitor("Bye");
$display("Hello world from System Verilog");
$display("==========================");

$finish;
end

endmodule
