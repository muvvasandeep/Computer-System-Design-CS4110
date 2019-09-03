// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/03/a/PC8Bit.tst

load PC8Bit.hdl,
output-file PC8Bit.out,
compare-to PC8Bit.cmp,
output-list time%S1.4.1 in%D1.4.1 reset%B2.1.2 load%B2.1.2 inc%B2.1.2 out%D1.6.1;

set in 0,
set reset 0,
set load 0,
set inc 0,
tick,
output;

tock,
output;

set inc 1,
tick,
output;

tock,
output;

set in -125,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,
output;

tock,
output;

tick,
output;

tock,
output;

set in 75,
set load 1,
set inc 0,
tick,
output;

tock,
output;
