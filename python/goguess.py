
# Program:      MasterMind
# Date          Feb 8, 2019
# Author        Jacob Stengel

import random

def goguess():
   
   number = random.randint(1,20)
   guesses = 0
   ui = 100
   
   while ui != number:
       ui = input('Please Enter a Guess')
       
       