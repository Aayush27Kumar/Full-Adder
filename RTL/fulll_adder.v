`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2024 01:41:04
// Design Name: 
// Module Name: fulll_adder
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
module full_adder(a_in,
                  b_in,
                  c_in,
                  sum_out,
                  carry_out);

//Step1 : Write down the directions for the port
 input a_in,b_in,c_in;
 output sum_out, carry_out;
 
 //Step2 : Declare the internal wire
 wire w1,w2,w3;
 
 //Step3 : Instantiate the Half-Adders using name-based port mapping
   half_adder HA1(.a(a_in),
                        .b(b_in),
                        .sum(w1),
                        .carry(w2));
   half_adder HA2(.a(w1),
                        .b(c_in),
                        .sum(sum_out),
                        .carry(w3));           
                        
 //Step4 : Instantiate the OR gate
   or Or_gate(carry_out,w2,w3);
endmodule


