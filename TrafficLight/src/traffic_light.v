module led (
input clk,
output reg [2:0] led
);

reg [31:0] counter;

always @(posedge clk) begin
    if (counter < 32'd459_000_000)
        counter <= counter + 1;
    else
        counter <= 32'd0;
end

always @(posedge clk) begin
    if(counter <= 32'd270_000_000)
        led <= 3'b110;
    else if (counter <= 32'd324_000_000)
        led <= 3'b101;
    else
        led <= 3'b011;
   
end
endmodule