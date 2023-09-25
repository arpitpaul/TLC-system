`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2023 16:22:52
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();

        reg clk, rst;
        wire [2:0] tr_light0;
        wire [2:0] tr_light1;
        wire [2:0] tr_light2;
        wire [2:0] tr_light3;
        wire [2:0] tr_light4;
        wire [2:0] tr_light5;
        wire [2:0] tr_light6;
       wire [2:0] tr_light7;
        wire [2:0] tr_light8;
        wire [2:0] tr_light9;
     
   
  TLC_design dut(.rst(rst), .clk(clk), .tr_light0(tr_light0), .tr_light1(tr_light1), .tr_light2(tr_light2) ,.tr_light3(tr_light3), .tr_light4(tr_light4), .tr_light5(tr_light5), .tr_light6(tr_light6), .tr_light7(tr_light7), .tr_light8(tr_light8), .tr_light9(tr_light9));
   
     initial begin
     
       clk = 1'b0;
     
        forever #10 clk = ~clk;
     
     end
     
      initial begin
     
        rst=1'b0;
        #10;
        rst=1'b1;
        #20;
        rst=1'b0;
        
        #(20*100);
        $finish;
        
        
     end

   
endmodule
