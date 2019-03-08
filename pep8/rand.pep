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
     
flag:    LDA     263,i      ; Resetting Variables back to values
         STA     p1,d
         LDA     71,i
         STA     p2,d
         LDA     100,i
         STA     n,d
         LDA     0,i         ;; Resetting the lg_temp ** Must do so your seed isn't messed up 
         STA     lg_temp,d
         ;; Checking to see if a seed has already been set
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
         ;; Executing Multiplier  (263 * seed)
         LDA     lg_temp,d
         ADDA    seed,d
         STA     lg_temp,d
         LDA     p1,d
         SUBA    1,i
         STA     p1,d
         BR      multiply

adder:   LDA     lg_temp,d
         ADDA    p2,d        ;; Adding 71 (lg_temp + 71)
         STA     lg_temp,d

moduu:   LDA     lg_temp,d   ; Sets a checker for mod. 
         SUBA    n,d
         STA     mod_temp,d
         ;; Executing Modulo (Refer to modulo for completely commented code. The edited 
         ;; version of the modulo for this specifc program will be commented
         ;; (lg_temp / 100) *** The remainder is the answer. Take the remainder and store into seed. 
         LDA     mod_temp,d
         CPA     0,i
         BRLT    resp
         LDA     lg_temp,d
         SUBA    n,d
         STA     lg_temp,d 
         LDA     modCount,d  ;; modCount is the counter for modulo
         ADDA    1,i
         STA     modCount,d
         BR      moduu

resp:    LDA     lg_temp,d
         STA     seed,d      ; Stores the answer into seed and outputs the seed
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

 
