;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Program Name: Modulo
;        Purpose: Find Remainder
;
;        Author:  Anthony Siemsen
;        Date: 12/10/2018
;
;        
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;               

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        CODE SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  

main:    STRO    msg1,d
         DECI    dend,d
         STRO    msg2,d
         DECI    divisor,d
         
modulo:  LDA     dend,d   ; Temp =  divisor - dend
         SUBA    divisor,d
         STA     temp,d
         LDA     temp,d
         CPA     0,i         ; if (temp >= 0)
         BRLT    end
         LDA     dend,d   ; divisor = divisor - dend
         SUBA    divisor,d
         STA     dend,d
         LDA     ans,d       ; ans = ans + 1
         ADDA    1,i
         STA     ans,d
         BR      modulo      

end:     STRO    msg3,d
         DECO    ans,d
         STRO    msg4,d
         DECO    divisor,d
         
          STOP      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        DATA SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
msg1:    .ASCII "Input the Divisor: \x00"
msg2:    .ASCII  "Input the Dividend: \x00"
msg3:    .ASCII  "\nThe Quotient is: \x00"
msg4:    .ASCII  "\nThe Remainder is: \x00"
divisor: .BLOCK  2
dend:    .BLOCK  2
ans:     .BLOCK  2
remain:  .BLOCK  2
temp:    .BLOCK  2

         .END- ;ERROR: Malformed decimal constant.