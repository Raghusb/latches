module dlatch(
    input  wire din,   
    input  wire rst,   
    input  wire en,    
    output reg  q,     
    output wire qb     
);

   
    assign qb = ~q;

  
    always @(*) begin
        if (rst) begin
            q = 1'b0; 
        end else if (en) begin
            q = din;   
        end
       
    end


endmodule
