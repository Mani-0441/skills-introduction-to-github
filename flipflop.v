module d_flipflop(d,clk,rst,q);
  input d,clk,rst;
  output reg q;
  always@(posedge clk) begin
    if(rst) begin
      q <= 1'b0;
    end
    else begin
      q <= d;
    end
  end
endmodule
/*
module d_flipflop_tb();
  reg d,clk,rst;
  wire q;
  d_flipflop dut(d,clk,rst,q);
  always begin
    #5 clk = ~clk;
  end
  initial begin
    clk = 1'b0;
    #10;
    rst = 1'b1;
    #15;
    rst = 1'b0;
    d = 1'b1;
    #20;
    d = 1'b0;
    #40
    d = 1'b1;
    #20 $finish;
  end
endmodule*/
