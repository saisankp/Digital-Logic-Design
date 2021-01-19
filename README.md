# Digital-Logic-Design
All the assignments I have done in the year long module CSU11026 (Digital Logic Design) in my first year of Computer Science at Trinity College Dublin.

## Assignment 1
Write a verilog module Circuit_1 (A, B, C, F1, F2); which implements a gate level description of the circuit below: <br>
<img src="https://i.imgur.com/GEGtNtf.png"/>

## Assignment 2 
Using continuous assignments, write a Verilog
module Circuit_2 (Out_1, Out_2, Out_3, A, B, C, D);
for the circuit specified by the following Boolean functions: <br>
<img src="https://i.imgur.com/HqvYmL8.png"/>

## Assignment 3
A majority logic function is a Boolean function that is equal to 1 if the majority of the
variables are equal to 1, equal to 0 otherwise. <br>
(a) Write a truth table for a four-bit majority function. <br>
(b) Write a Verilog user-defined primitive UDP_Majority_4 (z, a, b, c, d) for a four-bit
majority function. <br>

## Assignment 4
Write a Verilog dataflow description <br>
module BCD_Adder (Sum, Carry_out, Addend, Augend, Carry_in) of a four-bit binary coded decimal adder. <br>
Begin by writing a four bit binary adder module. Instantiate this twice in your binary coded
decimal module and use structural verilog to provide the outputs. <br>

## Assignment 5
Write a verilog dataflow description of a four-bit adder–subtractor of unsigned numbers.
module AdderSub (sum_diff, carry, A, B, select) <br>
first output should be a 4 bit sum or difference, second is the carry. <br>
The first two inputs should the 4 bit numbers to add and the final input is a select which
tells the module whether to add (zero) or subtract (one). <br>
Verilog uses the bit length of the operands to determine how many bits to use while
evaluating an expression. In the case of the addition operator, the bit length of the largest
operand, including the left-hand side of an assignment, shall be used. <br>
The tricky part of this problem is to get the carry bit right for subtract! <br>

## Assignment 6
Write a Verilog behavioural description <br>
module Compare (A, B, Y); <br>
of a four-bit unsigned comparator with a six-bit output Y[5:0]. <br>
Bit 5 of Y is for “equals,” bit 4 for “not equal to,” bit 3 for “greater than,” bit 2 for “less
than,” bit 1 for “greater than or equal,” and bit 0 for “less than or equal to.” <br>

## Assignment 7
Write a Verilog behavioural description <br>
module OddFunction (output A, input x, y, clk, reset_b); <br>
of the circuit below. <br>

<img src="https://i.imgur.com/lJdAyf5.png" />

Test data will change on the falling edge of the clock and your machine should change state on the rising edge. <br>
Your design should enter
state 0 on the negative edge
of the reset signal. <br>

## Assignment 8
Write a Verilog model of the sequential circuit described in this state table
and corresponding state diagram. <br>
module FiniteStateMachine (output out_z, input in_x, in_y, clk, reset_b); <br>

<img src="https://i.imgur.com/NI3SRLn.png" /> 

Test data will change on the falling edge of the clock and your machine should change state on the rising edge. <br>
Your design should enter
state 00 on the negative
edge of the reset signal. <br>

## Assignment 9
A synchronous finite state machine has an input x_in and an output y_out.  <br>
Whenever x_in is 1, the output y_out is to assert for three cycles (assert means change from zero to 1, or make it
have the value 1, ie make it true)  <br>
regardless of the value of x_in, and then de-assert for two cycles also
regardless of the value of x_in, before the machine will respond to another assertion of x_in.  <br>
If x_in is 0, output should stay at 0.  <br>

(a) Draw the state diagram of the machine.  <br>
(b) Write a Verilog model of the machine.  <br>
module StateDiagram (output y_out, input x_in, clk, reset_b);  <br>

Test data will change on the falling edge of the clock and your machine should change state on the rising edge. <br>
Your design should enter
state 00 on the negative
edge of the reset signal. <br>

## Assignment 10
Design an 8 bit serial 2’s complementer with an 8 bit shift register and a single flip‐flop
(to hold the carry). On each rising clock edge the binary number should be shifted
out from lsb or right side, y should take on the value of the complemented
bit which should also be shifted into the msb, ie left side, so that after 8 shifts
the register holds the complemented value. <br>
module Serial_Twos_Comp (output y, input [7: 0] data, input load, shift_control,
Clock, reset_b); <br>

Test data will change on the falling edge of the clock and your register should
shift on the rising edge. <br>
y is the serial output (ie the 2’s complement bits, least significant bit first)
data is a number to load the shift register with,
when load is high this data is stored on rising clock edge. <br>
when load is low shift_control high tells the register to shift and output the next bit in
y on rising clock edge. when shift_control is low y should be 0. <br>
Your design should store 0 on the negative edge of the reset signal. <br>
