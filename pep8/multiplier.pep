;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Program Name: Multiplier
;        Purpose: Multiply Numbers
;
;        Author: Anthny Siemsen   
;        Date: 11/27/2018
;
;        Input values:
;        Output values:
;
;        Return/exit values: 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;               

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        CODE SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
main:    LDA     0,i
         STA     product,d
         STRO    firstmsg,d  ; Ask for first Number
         DECI    input,d     ; Store in Input
         LDA     input,d
         STA     num1,d      ; Store input into num1
         STRO    msg2,d      ; Ask for Second Number
         DECI    input,d     
         LDA     input,d     ; Store in Input
         STA     num2,d      ; Store input into num2

multiply:LDA     num1,d
         CPA     0,i         ; num1 > 0
         BRLE    end         ; Else num1 is 0 or less go to end
         LDA     product,d
         ADDA    num2,d      ; add num2 to product
         STA     product,d
         LDA     num1,d
         SUBA    1,i         ; Subtract 1 from num1
         STA     num1,d
         BR      multiply    ; Repeat until num1 is less then or equal to 0

end:     STRO   answer,d
         DECO   product,d
         STOP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        DATA SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
product:         .BLOCK 2
num1:            .BLOCK 2
num2:            .BLOCK 2
firstmsg:        .ASCII "Input a Decimal Number \x00"
msg2:            .ASCII "Input a Decimal Number \x00"
input:           .BLOCK 2
answer:          .ASCII "The Product is: \x00"
                 .END  
