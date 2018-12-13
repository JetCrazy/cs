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
         STA     flagg,d
     
flag:    LDA     263,i
         STA     p1,d
         LDA     71,i
         STA     p2,d
         LDA     100,i
         STA     n,d
         LDA     0,i
         STA     lg_temp,d
         LDA     flagg,d
         CPA     0,i
         BRNE    multiply 
         STRO    msg1,d
         DECI    seed,d
         LDA     1,i
         STA     flagg,d

multiply:LDA     p1,d
         CPA     0,i
         ;; go to add
         BRLE    adder 
         LDA     lg_temp,d
         ADDA    seed,d
         STA     lg_temp,d
         LDA     p1,d
         SUBA    1,i
         STA     p1,d
         BR      multiply

adder:   LDA     lg_temp,d
         ADDA    p2,d
         STA     lg_temp,d

moduu:   LDA     lg_temp,d
         SUBA    n,d
         STA     mod_temp,d
         LDA     mod_temp,d
         CPA     0,i
         BRLT    resp
         LDA     lg_temp,d
         SUBA    n,d
         STA     lg_temp,d 
         LDA     modCount,d
         ADDA    1,i
         STA     modCount,d
         BR      moduu

resp:    LDA     lg_temp,d
         STA     seed,d
         DECO    seed,d
         STRO    space,d
         BR      flag    

;test:    DECO    lg_temp,d

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
flagg:   .BLOCK  2
seed:    .BLOCK  2
lg_temp: .BLOCK  2
mod_temp:.BLOCK  2
modCount:.BLOCK  2
space:   .ASCII  "\n\x00"
         .END

 