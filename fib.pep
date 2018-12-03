;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Program Name: 
;        Purpose: 
;
;        Author:  
;        Date: 
;
;        
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;               

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        CODE SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  

main:    LDA     0,i
         STA     fib_1,d                     
         STA     fib_3,d
         LDA     1,i
         STA     fib_2,d
         LDA     2,i
         STA     fib_4,d
         STRO    fib_ask,d
         DECI    fib_in,d
         
fib_if:  LDA     fib_in,d
         CPA     0,i
         BRNE    fib_loop
         STRO    fib_1,d
         BR      exit
fib_loop:LDA     fib_4,d
         CPA     fib_in,d
         BRGE    endmsg
         ;;;;;;;
         LDA     fib_1,d
         ADDA    fib_2,d
         STA     fib_3,d
         ;;;;
         LDA     fib_2,d
         STA     fib_1,d
         ;;;;
         LDA     fib_3,d
         STA     fib_2,d
         ;;;;;;;
         LDA     fib_4,d
         ADDA    1,i
         STA     fib_4,d
         BR      fib_loop

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

 
