;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Program Name: Random Nmumber
;        Purpose: Find the random numbers
;
;        Author:  Anthony Siemsen
;        Date: 12/11/2018
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
         STA     flag,d
         LDA     263,i
         STA     p1,d
         LDA     71,i
         STA     p2,d
         LDA     100,i
         STA     n,d
     
flag:    LDA     flag,d
         CPA     0,i
         BRNE    rand
         STRO    msg1,d
         DECI    seed,d
         LDA     1,i
         STA     flag,d

multiply:LDA     p1,d
         CPA     0,i
         BRLE    add_p2
         LDA     seed,d
         ADDA    p1,d
         STA     seed,d
         LDA     p1,d
         SUBA    1,i
         STA     p1,d
         BR      multiply

adder:   LDA     seed,d
         ADDA    p2,d
         STA     seed,d

moduu:    



          STOP      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        DATA SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
msg1:    .ASCII "Please enter the seed value: \x00"
p1:      .BLOCK  2
p2:      .BLOCK  2
n:       .BLOCK  2
flag:    .BLOCK  2
seed:    .BLOCK  2
         .END

 