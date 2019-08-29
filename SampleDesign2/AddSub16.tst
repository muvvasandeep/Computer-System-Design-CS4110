// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/Add16.tst

load AddSub16.hdl,
output-file AddSub16.out,
compare-to AddSub16.cmp,
output-list a%B1.16.1 b%B1.16.1 sel%D2.1.2 out%B1.16.1;

set sel %B0,
set a %B0000000000000000,
set b %B0000000000000000,
eval,
output;

set a %B0000000000000000,
set b %B1111111111111111,
eval,
output;

set a %B1111111111111111,
set b %B1111111111111111,
eval,
output;

set sel %B1,
set a %B1010101010101010,
set b %B0101010101010101,
eval,
output;

set a %B1111111111111111,
set b %B1111111111111111,
eval,
output;

set a %B0000000000000000,
set b %B0000000000000000,
eval,
output;
