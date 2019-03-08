         BR      main
sum:     .WORD   0x0000
num1:    .BLOCK  2
num2:    .BLOCK  2
num3:    .BLOCK  2
main:    LDA     sum,d
         DECI    num1,d
         ADDA    num1,d
         DECI    num2,d
         ADDA    num2,d
         DECI    num3,d
         ADDA    num3,d
         STA     sum,d
         DECO    sum,d
         STOP
         .END
