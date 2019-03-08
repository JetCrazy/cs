import random

def goguess():
    print("I have a number between 1 and 20 inclusive.")
    number = random.randint(1,20)
    check = 0
    counter = 1
    while check == 0:
        ask = input("Guess A Number: ")
        if ask == number:
            check = 1
        elif ask > number:
            print( str(ask) + " is Too High!")
            counter += 1
        elif ask < number:
            print( str(ask) + " is Too Low!")
            counter += 1
        else:
            print("Invalid")
    
    print("Right! My number is " + str(number) + "! You guessed in " + str(counter) +  " guesses!")