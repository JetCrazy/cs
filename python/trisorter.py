######################################
#
#    Name: Tri-Sorter    
#    Purpose: Sort 3  Numbers in
#    Author:  Anthony Siemsen
#    Date:    1-28-2019       
#
#######################################
import sys
print("Welcome to A Tri-Sorter")
num1 = raw_input(''' Please Enter the first Number: ''')
try:
    int(num1)
except ValueError:
    print("Not an Integer")
    sys.exit() ## Stops the Program
num2 = raw_input(''' Please Enter the second Number: ''')
try:
    int(num2)
except ValueError:
    print("Not an Integer")
    sys.exit() ## Stops the Program
num3 = raw_input(''' Please Enter the third Number: ''')
try: 
    int(num3)
except ValueError:
    print("Not an Integer")
    sys.exit() ## Stops the Program
def trisorter(num1, num2, num3):
    temp = 0
    if num1 > num2: # If num1 is greater then num2
        temp = num1
        num1 = num2
        num2 = temp
    if num2 > num3: # if num2 is greater then num3
        temp = num2
        num2 = num3
        num3 = temp
    if num1 > num2: # repeat first step incase num3 was greater then num2
        temp = num1
        num1 = num2
        num2 = temp
    print(num1, num2, num3)

trisorter(num1, num2, num3)