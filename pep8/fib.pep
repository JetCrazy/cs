;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Program Name: Fibonacci Sequence
;        Purpose: Find nth
;
;        Author:  Anthony Siemsen
;        Date:   12/3/2018
;
;        
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;               

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        CODE SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  

main:    LDA     0,i         ; Setting Variables
         STA     fib_1,d                     
         STA     fib_3,d
         LDA     1,i
         STA     fib_2,d
         LDA     2,i           
         STA     fib_4,d
         STRO    fib_ask,d   ; Ask for what number
         DECI    fib_in,d
         
fib_if:  LDA     fib_in,d    ; Checking if number was 0. 
         CPA     0,i         ;
         BRNE    fib_loop    ; if (fib_in = 0)
         DECO    fib_1,d
         BR      exit
fib_loop:LDA     fib_4,d     ;
         CPA     fib_in,d    ; while (fib_4 <= n)
         BRGT    endmsg      ; If fib_4 is greater then n go to endmsg
         ;;;;;;;
         LDA     fib_1,d     
         ADDA    fib_2,d     ;fib_3 = fib_2 + fib_1
         STA     fib_3,d
         ;;;;    
         LDA     fib_2,d     ; fib_1 = fib_2
         STA     fib_1,d
         ;;;;
         LDA     fib_3,d     ; fib_2 = fib_3
         STA     fib_2,d
         ;;;;;;;
         LDA     fib_4,d     
         ADDA    1,i         ; fib_4 = fib_4 + 1
         STA     fib_4,d
         BR      fib_loop    ; Loop back to top

endmsg:  STRO    fib_ans,d
         DECO    fib_2,d

exit:    STRO    end,d
          STOP               
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        DATA SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fib_1:   .BLOCK  2
fib_2:   .BLOCK  2
fib_3:   .BLOCK  2
fib_in:  .BLOCK  2
fib_4:   .BLOCK  2
fib_ask: .ASCII  "\nPlease Choose A Number: \x00" 
fib_ans: .ASCII  "\nThe Answer is: \x00"
end:     .ASCII  "\nDone \x00"
         .END

 
