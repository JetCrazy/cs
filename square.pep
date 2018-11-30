;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Program Name: Square
;        Purpose: Square any Number
;
;        Author:  Anthony Siemsen
;        Date: 11/28/2018
;
;        
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;               

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        CODE SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  

main:   LDA      0,i                
        STA      count,d
        STRO     input,d     ; Ask for the number
        DECI     num,d
        LDA      num,d
        STA      count,d

square: LDA      count,d
        CPA      0,i         ; count > 0
        BRLE     end         ; Else count is 0 or less go to end
        LDA      answer,d
        ADDA     num,d       ; Add num to the answer
        STA      answer,d    
        LDA      count,d     
        SUBA     1,i         ; Subtract 1 from count
        STA      count,d
        BR       square      ; Loop (Repeat until count is less then 0)

end:    STRO     msg,d
        DECO     answer,d
        STOP      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        DATA SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
input:    .ASCII "Input a number you would like to square \x00"
num:      .BLOCK  2
count:    .BLOCK  2
msg:      .ASCII "Your answer is: \x00"
answer:   .BLOCK 2
         .END

 