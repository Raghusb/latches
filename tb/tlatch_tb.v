module tlatch_tb;
reg tin_tb;
reg rst_tb;
reg en_tb;
wire q_tb,qb_tb;

tlatch DUT (
.tin(tin_tb),
.rst(rst_tb),
.en(en_tb),
.q(q_tb),
.qb(qb_tb));


initial begin
$monitor ("Values Time=%0t,tin_tb=%b,rst_tb=%b,en_tb=%b,q_tb=%b,qb_tb=%b",$time, tin_tb, rst_tb, en_tb, q_tb, qb_tb);

rst_tb=1'b1;
en_tb=1'b0;
tin_tb=1'b1;
#5;

rst_tb=1'b0;
en_tb=1'b1;
tin_tb=1'b1;
#3;

tin_tb=1'b1;#3;
tin_tb=1'b0;#3;
tin_tb=1'b1;#3;

en_tb=1'b0;
tin_tb=1'b0;
#3;
en_tb=1'b1;
tin_tb=1'b1;
#5;
$finish;
end


endmodule
