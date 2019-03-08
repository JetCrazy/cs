;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Program Name: Division 
;        Purpose: Divide Numbers
;
;        Author:  Anthony Siemsen
;        Date: 12/5/2018
;
;        
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;               

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        CODE SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  

main:    LDA     0,i         ;; Setting Variables = 0     
         STA     count,d
         STA     num1,d
         STA     num2,d
         ;;;;; Ask for user input
         STRO    msg_1,d
         DECI    num1,d
         STRO    msg_2,d
         DECI    num2,d

divide:  LDA     num1,d
         CPA     0,i
         BREQ    end         ; While (num1 > 0)
         LDA     num1,d
         SUBA    num2,d
         STA     num1,d      ; num1 = num1 - num2
         LDA     count,d
         ADDA    1,i
         STA     count,d     ; count = count + 1
         BR      divide

end:     STRO    ans_msg,d
         DECO    count,d     ; Count is the answer 
          STOP      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        DATA SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
msg_1:   .ASCII  "Please Input the first number: \x00"
msg_2:   .ASCII  "Please Input the Second Number: \x00"
num1:    .BLOCK  2
num2:    .BLOCK  2
count:   .BLOCK  2
ans_msg: .ASCII  "The Answer is: \x00"
         .END

 
