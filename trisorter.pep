;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;
;        Program Name: Tri-Sorter
;        Purpose: Sort 3 Numbers from Least to Greatest
;        Authors: Anthony Siemsen and Aidan Hutchens
;        Date: 11/20/2018
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        CODE SECTION
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

main:    DECI    num1,d
         DECI    num2,d
         DECI    num3,d
         LDA     num2,d      ; Loads num2 into AC
         CPA     num1,d      ; Compares num1 with num2 (num1 > num2)
         BRGE    check2      ; Else statement. If num2 is greater then num1 then go to the next check
         ; If num1 is greater then num2
         LDA     num1,d      ; Load num1 into ac
         STA     temp,d      ; Stores num1 into temp var
         LDA     num2,d      ; Stores num2 into ac
         STA     num1,d      ; Swaps num2 value into num1
         LDA     temp,d      ; Loads temp into ac
         STA     num2,d      ; Puts temp (Og num1) into num2
         BR      check2      ; Move to next check

check2:  LDA     num3,d      ; Load num3 into ac {*Both tie into each other for the if}
         CPA     num2,d      ; Compare them       {*Above Comment}
         BRGE    check3      ; Else statement to go to check3 if num3 is greater then num2
         ; If num2 is greater then num2
         LDA     num2,d      ; Loads num2 into ac
         STA     temp,d      ; Store num2 into temp
         LDA     num3,d      ; Loads num3 into ac
         STA     num2,d      ; Swaps num3 into num2
         LDA     temp,d      ; Loads temp into ac
         STA     num3,d        ; Puts temp (Og temp2) into num3 
         BR      check3      ; Move to check3

check3:  LDA     num2,d      ; Loads num2 into AC
         CPA     num1,d      ; Compares num1 with num2 (num1 > num2)
         BRGE    output      ; Else statement. If num2 is greater then num1 then go to the next check
         ; If num1 is greater then num2
         LDA     num1,d      ; Load num1 into ac
         STA     temp,d      ; Stores num1 into temp var
         LDA     num2,d      ; Stores num2 into ac
         STA     num1,d      ; Swaps num2 value into num1
         LDA     temp,d      ; Loads temp into ac
         STA     num2,d      ; Puts temp (Og num1) into num2

output:  STRO    output2,d
         DECO    num1,d
         CHARO space,d  
         DECO    num2,d
         CHARO space,d 
         DECO    num3,d

exit:    STOP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        VARIABLES/DATA SECTION
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
num1:    .BLOCK 2
num2:    .BLOCK 2
num3:    .BLOCK 2
temp:    .BLOCK 2
space:   .ASCII " "
output2:  .ASCII "The 3 Numbers in Ascending Order are: \x00" 
         .END