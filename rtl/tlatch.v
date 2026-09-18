module tlatch(
input tin,
input en,
output reg q,
output wire qb,
input rst

    );
    
    assign qb=~q;
    
    always@(*)begin
    if(rst) begin
    q = 1'b0;
    end else if(en) begin
    if(tin)begin
    q = ~q;
    end else
    q = q;
    end
    end
    
    endmodule
