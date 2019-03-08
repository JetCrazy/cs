#
#   Program Name:   Rock Paper Scissors
#   Date:           1/25/2019
#   Author:         Anthony Siemsen
#


import random
import sys

ROCK = 1
PAPER = 2
SCISSORS = 3

print("Welcome to Rock, Paper, Scissors")
a = raw_input("Please Select 1(Rock), 2(Paper), 3(Scissors)")
print a
if a.isdigit() == False:  # Checks if Input was an Interger
    print("Selection Not Valid, Please Select an Interger")
    sys.exit()
    
p1 = int(a) # Converts Valid Input to an Interger
    
if p1 < 1 or p1 > 3: # Checks if The Selection is 1-3
    print("The number you selected was Invalid!")
    sys.exit()
    
comp = random.randint(1, 3) # Generate the Computers Choice
    
if p1 == comp: # If Player 1 and Computer are Equal it will be a tie.
    print("This round was a draw!")
elif p1 == ROCK and comp == PAPER:
    print("The Computer Wins")
elif p1 == ROCK and comp == SCISSORS:
    print("Player 1 Wins!")
elif p1 ==  PAPER and comp == ROCK:
    print("Player 1 Wins!")
elif p1 == PAPER and comp == SCISSORS:
    print("The Computer Wins")
elif p1 == SCISSORS and comp == ROCK:
    print("The Computer Wins!")
elif p1 == SCISSORS and comp == PAPER:
    print("Player 1 Wins!")

print("Player 1: " + str(p1))
print("Computer: " + str(comp))
