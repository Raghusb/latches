module dlatch_tb;

    reg  din_tb;
    reg  rst_tb;
    reg  en_tb;
    wire q_tb;
    wire qb_tb;

   
    dlatch DUT (
        .din(din_tb),
        .rst(rst_tb),
        .en(en_tb),
        .q(q_tb),
        .qb(qb_tb)
    );

    initial begin
        
        $monitor("Time=%0t | rst_tb=%b | en_tb=%b | din_tb=%b | q_tb=%b | qb_tb=%b", 
                 $time, rst_tb, en_tb, din_tb, q_tb, qb_tb);

        
        rst_tb = 1'b1;
        en_tb  = 1'b0;
        din_tb = 1'b1;
        #5;

        
        rst_tb = 1'b0;
        en_tb  = 1'b1;  
        din_tb = 1'b1; #5; 
        din_tb = 1'b0; #5; 
        din_tb = 1'b1; #5; 

       
        en_tb  = 1'b0;  
        #2;
        din_tb = 1'b0; #5;
        din_tb = 1'b1; #5; 

        
        en_tb  = 1'b1;  // Samples current din_tb (1)
        #5;

       
        $finish;
    end

endmodule
