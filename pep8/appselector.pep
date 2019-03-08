;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Program Name: App Selector
;        Purpose: This program will present a menu to the user allowing
;                 them to select one of several programs to execute.
;
;        Author: Anthony Siemsen
;        Date: 12/4/2018
;
;        Input values: Various values will be prompted from the user 
;        Output values: Various output depending on the app selected
;
;        Return/exit values: None
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;               

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        CODE SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
main:    STRO    title, d                 ; display the main menu
         STRO    menu1, d
         STRO    menu2, d
         STRO    menu3, d         
         STRO    menu4, d
         STRO    menu5, d
         STRO    menu6, d
         STRO    menu7, d
         STRO    menu8, d

         STRO    title2, d                ; prompt the user for input
         DECI    select, d                ; read the users input

         ; process option 1 (determine if they selected maximus)                   
option1: LDA     select, d
         CPA     1, i
         BRNE    option2
         CALL    maximus
         BR      exit

         ; process option 2
option2: CPA     2, i
         BRNE    option3 
         CALL    trisort   
         BR      exit

         ; process option 3
option3: CPA     3, i
         BRNE    option4 
         CALL    looper  
         BR      exit

         ; process option 4
option4: CPA     4, i
         BRNE    option5 
         CALL    multi 
         BR      exit

         ; process option 5
option5: CPA     5, i
         BRNE    option6 
         CALL    square     
         BR      exit

option6: CPA     6, i
         BRNE    option7 
         CALL    modulo     
         BR      exit

option7: CPA     7, i
         BRNE    option8
         CALL    fib     
         BR      exit

option8: CPA     8, i
         BRNE    error 
         CALL    rand     
         BR      exit

         ; user entered invalid input
error:   STRO    error2,d
         BR      exit                 ; Is this branch needed?


exit:    STRO    exitmsg, d
         STOP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        maximus - Prompt the user for two numers and output the largest
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
maximus: STRO    m_hello,d
         CHARO   '\n', i
         STRO    m_prmt1, d 
         DECI    m_num1, d
         STRO    m_prmt2, d
         DECI    m_num2, d 
         LDA     m_num2, d
         CPA     m_num1, d
         BRGE    mcheck1
         STRO    m_msg1, d
         DECO    m_num1, d
         CHARO   '\n',i 
         BR      done

mcheck1: LDA     m_num1, d
         CPA     m_num2, d
         BREQ    mequal      
         STRO    m_msg1, d
         DECO    m_num2, d
         CHARO   '\n',i 
         BR      done

mequal:  STRO    m_msg2, d 
done:    RET0 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Tri-Sorter
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

trisort:  STRO t_input,d
          DECI t_num1,d
          STRO t_input,d
          DECI t_num2,d
          STRO t_input,d
          DECI t_num3,d
          LDA t_num2,d ; Loads num2 into AC
          CPA t_num1,d ; Compares num1 with num2 (num1 > num2)
          BRGE t_check2 ; Else statement. If num2 is greater then num1 then go to the next check
          ; If num1 is greater then num2
          LDA t_num1,d ; Load num1 into ac
          STA t_temp,d ; Stores num1 into temp var
          LDA t_num2,d ; Stores num2 into ac
          STA t_num1,d ; Swaps num2 value into num1
          LDA t_temp,d ; Loads temp into ac
          STA t_num2,d ; Puts temp (Og num1) into num2
          BR t_check2 ; Move to next check 

t_check2: LDA t_num3,d ; Load num3 into ac {*Both tie into each other for the if}
          CPA t_num2,d ; Compare them {*Above Comment}
          BRGE t_check3 ; Else statement to go to check3 if num3 is greater then num2
          ; If num2 is greater then num2
          LDA t_num2,d ; Loads num2 into ac
          STA t_temp,d ; Store num2 into temp
          LDA t_num3,d ; Loads num3 into ac
          STA t_num2,d ; Swaps num3 into num2
          LDA t_temp,d ; Loads temp into ac
          STA t_num3,d ; Puts temp (Og temp2) into num3 
          BR t_check3 ; Move to check3

t_check3: LDA t_num2,d ; Loads num2 into AC
          CPA t_num1,d ; Compares num1 with num2 (num1 > num2)
          BRGE t_output ; Else statement. If num2 is greater then num1 then go to the next check
          ; If num1 is greater then num2
          LDA t_num1,d ; Load num1 into ac
          STA t_temp,d ; Stores num1 into temp var
          LDA t_num2,d ; Stores num2 into ac
          STA t_num1,d ; Swaps num2 value into num1
          LDA t_temp,d ; Loads temp into ac
          STA t_num2,d ; Puts temp (Og num1) into num2

t_output: STRO  t_out,d 
          DECO  t_num1,d
          CHARO t_space,d 
          DECO  t_num2,d
          CHARO t_space,d 
          DECO  t_num3,d
          BR t_done
t_done:    RET0 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Looper
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

looper:  LDA 0,i 
         STA l_count,d
loop:    LDA l_count,d
         CPA 10,i
         BRGE l_done         ; While (count < 10)
         DECO l_count,d
         CHARO l_space,d
         LDA l_count,d       ; count = count + 1
         ADDA 1,i
         STA l_count,d
         BR  loop            ; Back to loop


l_done:  RET0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Multiplier
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
multi: LDA 0,i 
         STA  product,d
         STRO firstmsg,d ; Ask for first Number
         DECI x_input,d ; Store in Input    
         LDA x_input,d
         STA x_num1,d ; Store input into num1
         STRO x_msg2,d ; Ask for Second Number
         DECI x_input,d 
         LDA x_input,d ; Store in Input
         STA x_num2,d ; Store input into num2

multiply:LDA x_num1,d
         CPA 0,i ; num1 > 0
         BRLE end ; Else num1 is 0 or less go to end
         LDA product,d 
         ADDA x_num2,d ; add num2 to product
         STA product,d
         LDA x_num1,d
         SUBA 1,i ; Subtract 1 from num1
         STA x_num1,d
         BR multiply ; Repeat until num1 is less then or equal to 0

end:     STRO x_answer,d 
         DECO product,d

m_done: RET0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Square
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

square:  LDA 0,i 
         STA s_count,d
         STRO s_input,d ; Ask for the number
         DECI s_num,d
         LDA s_num,d
         STA s_count,d

s_square:LDA s_count,d
         CPA 0,i ; count > 0
         BRLE s_end ; Else count is 0 or less go to end
         LDA s_answer,d
         ADDA s_num,d ; Add num to the answer
         STA s_answer,d 
         LDA s_count,d 
         SUBA 1,i ; Subtract 1 from count
         STA s_count,d
         BR s_square ; Loop (Repeat until count is less then 0)

s_end:   STRO s_msg,d
         DECO s_answer,d
s_done:  RET0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Modulo
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

modulo:  STRO o_msg1,d 
         DECI odivisor,d
         STRO o_msg2,d 
         DECI o_dend,d
omodulo: LDA odivisor,d ; Temp = divisor - dend
         SUBA o_dend,d 
         STA o_temp,d
         LDA o_temp,d
         CPA 0,i ; if (temp >= 0)
         BRLT o_end
         LDA odivisor,d ; divisor = divisor - dend
         SUBA o_dend,d
         STA odivisor,d
         LDA o_ans,d ; ans = ans + 1
         ADDA 1,i            
         STA o_ans,d
         BR omodulo 

o_end:   STRO o_msg3,d
         DECO o_ans,d
         STRO o_msg4,d
         DECO odivisor,d
         
o_done:  RET0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Fibanacci Sequence
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

fib:    LDA 0,i ; Setting Variables 
         STA fib_1,d 
         STA fib_3,d
         LDA 1,i
         STA fib_2,d
         LDA 2,i 
         STA fib_4,d
         STRO fib_ask,d ; Ask for what number
         DECI fib_in,d
fib_if:  LDA fib_in,d ; Checking if number was 0. 
         CPA 0,i ;
         BRNE fib_loop ; if (fib_in = 0)
         DECO fib_1,d
         BR exit
fib_loop:LDA fib_4,d ;
         CPA fib_in,d ; while (fib_4 <= n)
         BRGT fibmsg ; If fib_4 is greater then n go to endmsg
         ;;;;;;;
         LDA fib_1,d 
         ADDA fib_2,d ;fib_3 = fib_2 + fib_1
         STA fib_3,d
         ;;;; 
         LDA fib_2,d ; fib_1 = fib_2
         STA fib_1,d
         ;;;;    
         LDA fib_3,d ; fib_2 = fib_3
         STA fib_2,d
         ;;;;;;;
         LDA fib_4,d 
         ADDA 1,i ; fib_4 = fib_4 + 1
         STA fib_4,d
         BR fib_loop ; Loop back to top

fibmsg:  STRO fib_ans,d
         DECO fib_2,d
fibret:  RET0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        DATA SECTION 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;
; menu variables and strings
;
title:   .ASCII  "Welcome to the Application Selection Menu \n\n\x00"
title2:  .ASCII  "\nPlease enter your selection: \x00"
menu1:   .ASCII  "     1. Run the Maximus program \n\x00"
menu2:   .ASCII  "     2. Run the TriSorter program \n\x00"
menu3:   .ASCII  "     3. Run the Looper program \n\x00" 
menu4:   .ASCII  "     4. Run the Multiplier program \n\x00"
menu5:   .ASCII  "     5. Run the Squaring program \n\x00"
menu6:   .ASCII  "     6. Run the Modulo program \n\x00"
menu7:   .ASCII  "     7. Run the Fibanacci program \n\x00"
menu8:   .ASCII  "     8. Run the Random Number program \n\x00"
msg1:    .ASCII  "main(): Proceeding to function call\n\x00" 
msg2:    .ASCII  "main(): Returned from function call\n\x00"
exitmsg: .ASCII  "\nEnd of run\x00"
error1:   .ASCII  "\nError main()01: This function has not yet been implemented.\n\n\x00"
error2:   .ASCII  "\nError main()02: Invalid selection... and you are a loser for selecting it.\n\n\x00"
select:  .BLOCK 2

;
; maximus variables and strings
;
m_num1:  .BLOCK  2
m_num2:  .BLOCK  2
m_hello: .ASCII "\nExecuting maximus()... \x00"
m_prmt1: .ASCII "Please enter the first number: \x00"
m_prmt2: .ASCII "Please enter the second number: \x00"
m_msg1:  .ASCII "The maximum number is: \x00"
m_msg2:  .ASCII "The numbers are equal. \n\x00"  

;
;  Tri-Sorter Variables and Strings
;
t_input: .ASCII "Please Enter a Number: \x00"
t_num1: .BLOCK 2 
t_num2: .BLOCK 2
t_num3: .BLOCK 2
t_temp: .BLOCK 2
t_space: .ASCII " "
t_out: .ASCII "The 3 Numbers in Ascending Order are: \x00" 

;
;  Looper Variables and Strings
;
l_space: .ASCII " " 
l_count: .BLOCK 2

;
;  Multiplier Variables and Strings
;

product:  .BLOCK 2 
x_num1:   .BLOCK 2 
x_num2:   .BLOCK 2
firstmsg: .ASCII "Input a Decimal Number \x00"
x_msg2:   .ASCII "Input a Decimal Number \x00"
x_input:  .BLOCK 2
x_answer: .ASCII "The Product is: \x00"


;
;  Square Variables and Strings
;
s_input:  .ASCII "Input a number you would like to square \x00" 
s_num:    .BLOCK 2
s_count:  .BLOCK 2
s_msg:    .ASCII "Your answer is: \x00"
s_answer: .BLOCK 2

;
; Modulo Vairables and Strings
;

o_msg1: .ASCII "Input the Divisor: \x00" 
o_msg2: .ASCII "Input the Dividend: \x00"
o_msg3: .ASCII "\nThe Quotient is: \x00"
o_msg4: .ASCII "\nThe Remainder is: \x00"
odivisor: .BLOCK 2
o_dend: .BLOCK 2
o_ans: .BLOCK 2
o_remain: .BLOCK 2
o_temp: .BLOCK 2

;
; fib Vairables and Strings
;
fib_1: .BLOCK 2 
fib_2: .BLOCK 2
fib_3: .BLOCK 2
fib_in: .BLOCK 2
fib_4: .BLOCK 2
fib_ask: .ASCII "\nPlease Choose A Number: \x00" 
fib_ans: .ASCII "\nThe Answer is: \x00"
         .END
