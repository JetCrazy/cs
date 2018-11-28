;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;        Program Name: App Selector
;        Purpose: This program will present a menu to the user allowing
;                 them to select one of several programs to execute.
;
;        Author: Bill Myers
;        Date: 11/28/2018
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
         STRO    error1,d
         ;CALL    trisorter
         ;STRO    msg2, d       
         BR      exit

         ; process option 3
option3: CPA     3, i
         BRNE    option4 
         STRO    error1,d
         ;CALL    looper
         ;STRO    msg2, d       
         BR      exit

         ; process option 4
option4: CPA     4, i
         BRNE    option5 
         STRO    error1,d
         ;CALL    multiplier
         ;STRO    msg2, d       
         BR      exit

         ; process option 5
option5: CPA     5, i
         BRNE    error 
         STRO    error1,d
         ;CALL    square
         ;STRO    msg2, d       
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
    
         .END