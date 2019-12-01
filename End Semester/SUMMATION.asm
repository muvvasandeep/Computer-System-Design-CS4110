// Array starts from R0
// length of the array is 5
// array = {1, 2, 3, 4, 5}
// RAM[5] -> sum 15
// RAM[6] -> min  1
// RAM[7] -> max  5

// initialize summation
@5
M = 0

// initialize min
@0
D = M
@6
M = D

// initialize max
@0
D = M
@7
M = D

// set index
@0
D = A
@i
M = 0

(LOOP)
    // compare index with len of array
    @i
    D = M
    @5          //length of the array is 5
    D = A - D

    // if D = 0 i.e., index overflows array size
    @END
    D;JEQ

    // read value at array index
    @i
    A = M
    D = M
    @curr
    M = D

    // increment index
    @i
    M = M + 1

    //add the current value to sum
    @5
    D = M
    @curr
    D = D + M
    @5
    M = D

    //if maximum
    @7
    D = M
    @curr
    D = D - M
    @MAX
    D;JLT

    //if minimum
    @6
    D = M
    @curr
    D = D - M
    @MIN
    D;JGT

    @LOOP
    0;JMP

(MIN)
    @curr
    D = M
    @6
    M = D
    @LOOP
    0;JMP

(MAX)
    @curr
    D = M
    @7
    M = D
    @LOOP
    0;JMP

(END)
    @END
    0;JMP
