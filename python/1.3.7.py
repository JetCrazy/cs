############################################
#
#       Author: Anthony Siemsen
#       Program: 1.3.7
#       Date: 2-5-2019
#
############################################




import matplotlib.pyplot as plt # standard short name
import random

def roll_hundred_pair():
    # Intialize Variables
    dice1 = [1,2,3,4,5,6]
    dice2 = [1,2,3,4,5,6]
    outcome = []
    
    for rolls in range(100): # Rolls dice 100 times
        roll1 = random.choice(dice1) # Roll 1
        roll2 = random.choice(dice2) # Roll 2
        total = roll1 + roll2 # Add Rolls Together
        outcome += [total] # Add the roll to the list
    
    plt.hist(outcome) # Show graph
    plt.show()
    

def dice(n):
    # Intialize Variables
    die = [1,2,3,4,5,6]
    outcome = 0
    for roll in range(n): # Roll the given amount of times
        rolled = random.choice(die) # Roll
        outcome = outcome + rolled
    print("Roll was " + str(outcome)) # Output the amount of rolls 
    

def matches(tickets, winners):
   count = 0
   for a in winners: 
       if a in tickets:
           count += 1
       #count += tickets.count(a) # Checks if tickets is in winners and then adds 1 to count 
   print count