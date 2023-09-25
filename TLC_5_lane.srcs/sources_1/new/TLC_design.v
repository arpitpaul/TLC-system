`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mr. Arpit Paul
// 
// Create Date: 25.09.2023 14:29:40
// Design Name: 
// Module Name: TLC_design
// Project Name: 4 lane Traffic Light Controller 
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


module TLC_design( input rst, clk,
     output reg [2:0] tr_light0,
     output reg [2:0] tr_light1,
     output reg [2:0] tr_light2,
     output reg [2:0] tr_light3,
     output reg [2:0] tr_light4,
     output reg [2:0] tr_light5,
     output reg [2:0] tr_light6,
     output reg [2:0] tr_light7,
     output reg [2:0] tr_light8,
     output reg [2:0] tr_light9
     
     
    );
    
    
    parameter  s0=0, s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, s10=10, s11=11;
    parameter t1=6, t2=3, t3=2, t4=5, t5=3, t6=3, t7=2, t8=2, t9=2, t10=2,t11=3,t12=3;                     ///// 2-process methodology........
    reg [3:0] ps;
    reg[2:0] counter;
    
    always @(posedge clk or posedge rst)
    begin
      
      if(rst==1)
      begin
        ps <= s0;
        counter<=0;
      end
      else
                                                                                                ////////////Reset Logic and Next State Decoder.........
          case(ps)
             s0: begin
                  if(counter<t1)
                    begin
                      ps <= s0;
                      counter <= counter+1;
                    end
                    
                    else
                      begin
                        ps <= s1;
                        counter<=0;
                      end
                    end
              s1: begin
                      if(counter<t2)
                        begin
                         ps <= s1;
                         counter <= counter+1;
                        end
                                
                        else
                          begin
                            ps <= s2;
                            counter<=0;
                          end
                 end
                 
                s2: begin
                         if(counter<t3)
                           begin
                            ps <= s2;
                            counter <= counter+1;
                           end
                                   
                           else
                             begin
                               ps <= s3;
                               counter<=0;
                             end
                    end
                    
                  s3: begin
                            if(counter<t4)
                              begin
                               ps <= s3;
                               counter <= counter+1;
                              end
                                      
                              else
                                begin
                                  ps <= s4;
                                  counter<=0;
                                end
                       end
                   s4: begin
                               if(counter<t5)
                                 begin
                                  ps <= s4;
                                  counter <= counter+1;
                                 end
                                         
                                 else
                                   begin
                                     ps <= s5;
                                     counter<=0;
                                   end
                          end
                          
                    s5: begin
                                  if(counter<t6)
                                    begin
                                     ps <= s5;
                                     counter <= counter+1;
                                    end
                                            
                                    else
                                      begin
                                        ps <= s6;
                                        counter<=0;
                                      end
                             end
                     s6: begin
                                   if(counter<t7)
                                       begin
                                        ps <= s6;
                                        counter <= counter+1;
                                       end
                                               
                                       else
                                         begin
                                           ps <= s7;
                                           counter<=0;
                                         end
                          end
                          
                      s7: begin
                                  if(counter<t8)
                                    begin
                                     ps <= s7;
                                     counter <= counter+1;
                                    end
                                            
                                    else
                                      begin
                                        ps <= s8;
                                        counter<=0;
                                      end
                             end
                      s8: begin
                                     if(counter<t9)
                                       begin
                                        ps <= s8;
                                        counter <= counter+1;
                                       end
                                               
                                       else
                                         begin
                                           ps <= s9;
                                           counter<=0;
                                         end
                             end
                       s9: begin
                                     if(counter<t10)
                                       begin
                                        ps <= s9;
                                        counter <= counter+1;
                                       end
                                               
                                       else
                                         begin
                                           ps <= s10;
                                           counter<=0;
                                         end
                            end
                        s10: begin
                                    if(counter<t11)
                                      begin
                                       ps <= s10;
                                       counter <= counter+1;
                                      end
                                              
                                      else
                                        begin
                                          ps <= s11;
                                          counter<=0;
                                        end
                               end
                        s11: begin
                                       if(counter<t12)
                                         begin
                                          ps <= s11;
                                          counter <= counter+1;
                                         end
                                                 
                                         else
                                           begin
                                             ps <= s0;
                                             counter<=0;
                                           end
                             end
                             
                       default: ps <= s0;
                  endcase
         
      
    
    end
    
   always @ (ps)
   begin
      
     case(ps)
       
         s0:begin
           tr_light0 <= 3'b001;
           tr_light1 <= 3'b100;
           tr_light2 <= 3'b100;
           tr_light3 <= 3'b100;
           tr_light4 <= 3'b001;
           tr_light5 <= 3'b100;
           tr_light6 <= 3'b100;
           tr_light7 <= 3'b001;
           tr_light8 <= 3'b100;
           tr_light9 <= 3'b100;
          end
         s1:begin
              tr_light0 <= 3'b010;
              tr_light1 <= 3'b100;
              tr_light2 <= 3'b100;
              tr_light3 <= 3'b100;                                    /////////Output Decoder................
              tr_light4 <= 3'b001;
              tr_light5 <= 3'b100;
              tr_light6 <= 3'b100;
              tr_light7 <= 3'b001;
              tr_light8 <= 3'b100;
              tr_light9 <= 3'b100;
             end
             s2:begin
                 tr_light0 <= 3'b100;
                 tr_light1 <= 3'b100;
                 tr_light2 <= 3'b100;
                 tr_light3 <= 3'b100;
                 tr_light4 <= 3'b001;
                 tr_light5 <= 3'b001;
                 tr_light6 <= 3'b100;
                 tr_light7 <= 3'b001;
                 tr_light8 <= 3'b100;
                 tr_light9 <= 3'b100;
                end
                s3:begin
                    tr_light0 <= 3'b100;
                    tr_light1 <= 3'b100;
                    tr_light2 <= 3'b100;
                    tr_light3 <= 3'b100;
                    tr_light4 <= 3'b010;
                    tr_light5 <= 3'b001;
                    tr_light6 <= 3'b100;
                    tr_light7 <= 3'b001;
                    tr_light8 <= 3'b100;
                    tr_light9 <= 3'b100;
                   end
                 s4:begin
                       tr_light0 <= 3'b100;
                       tr_light1 <= 3'b100;
                       tr_light2 <= 3'b100;
                       tr_light3 <= 3'b001;
                       tr_light4 <= 3'b100;
                       tr_light5 <= 3'b001;
                       tr_light6 <= 3'b100;
                       tr_light7 <= 3'b001;
                       tr_light8 <= 3'b001;
                       tr_light9 <= 3'b100;
                      end
                   s5:begin
                          tr_light0 <= 3'b100;
                          tr_light1 <= 3'b100;
                          tr_light2 <= 3'b100;
                          tr_light3 <= 3'b010;
                          tr_light4 <= 3'b100;
                          tr_light5 <= 3'b001;
                          tr_light6 <= 3'b100;
                          tr_light7 <= 3'b010;
                          tr_light8 <= 3'b001;
                          tr_light9 <= 3'b100;
                         end
                    s6:begin
                             tr_light0 <= 3'b100;
                             tr_light1 <= 3'b001;
                             tr_light2 <= 3'b100;
                             tr_light3 <= 3'b100;
                             tr_light4 <= 3'b100;
                             tr_light5 <= 3'b001;
                             tr_light6 <= 3'b100;
                             tr_light7 <= 3'b100;
                             tr_light8 <= 3'b001;
                             tr_light9 <= 3'b100;
                            end
                         s7:begin
                                tr_light0 <= 3'b100;
                                tr_light1 <= 3'b010;
                                tr_light2 <= 3'b100;
                                tr_light3 <= 3'b100;
                                tr_light4 <= 3'b100;
                                tr_light5 <= 3'b001;
                                tr_light6 <= 3'b100;
                                tr_light7 <= 3'b100;
                                tr_light8 <= 3'b010;
                                tr_light9 <= 3'b100;
                               end
                            s8:begin
                                   tr_light0 <= 3'b100;
                                   tr_light1 <= 3'b100;
                                   tr_light2 <= 3'b001;
                                   tr_light3 <= 3'b100;
                                   tr_light4 <= 3'b100;
                                   tr_light5 <= 3'b001;
                                   tr_light6 <= 3'b001;
                                   tr_light7 <= 3'b100;
                                   tr_light8 <= 3'b100;
                                   tr_light9 <= 3'b100;
                                  end
                               s9:begin
                                      tr_light0 <= 3'b100;
                                      tr_light1 <= 3'b100;
                                      tr_light2 <= 3'b010;
                                      tr_light3 <= 3'b100;
                                      tr_light4 <= 3'b100;
                                      tr_light5 <= 3'b010;
                                      tr_light6 <= 3'b001;
                                      tr_light7 <= 3'b100;
                                      tr_light8 <= 3'b100;
                                      tr_light9 <= 3'b100;
                                     end
                                 s10:begin
                                         tr_light0 <= 3'b100;
                                         tr_light1 <= 3'b100;
                                         tr_light2 <= 3'b100;
                                         tr_light3 <= 3'b001;
                                         tr_light4 <= 3'b100;
                                         tr_light5 <= 3'b100;
                                         tr_light6 <= 3'b001;
                                         tr_light7 <= 3'b001;
                                         tr_light8 <= 3'b100;
                                         tr_light9 <= 3'b001;
                                        end
                                    s11:begin
                                            tr_light0 <= 3'b100;
                                            tr_light1 <= 3'b100;
                                            tr_light2 <= 3'b100;
                                            tr_light3 <= 3'b010;
                                            tr_light4 <= 3'b100;
                                            tr_light5 <= 3'b100;
                                            tr_light6 <= 3'b010;
                                            tr_light7 <= 3'b001;
                                            tr_light8 <= 3'b100;
                                            tr_light9 <= 3'b010;
                                       end
                         default: begin
                               tr_light0 <= 3'b000;
                               tr_light1 <= 3'b000;
                               tr_light2 <= 3'b000;
                               tr_light3 <= 3'b000;
                               tr_light4 <= 3'b000;
                               tr_light5 <= 3'b000;
                               tr_light6 <= 3'b000;
                               tr_light7 <= 3'b000;
                               tr_light8 <= 3'b000;
                               tr_light9 <= 3'b000;
                              end
   endcase
      
                                         
   end
endmodule
