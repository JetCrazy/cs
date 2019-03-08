from __future__ import print_function
def hangman():
    word = input('''
    Please Enter A word to Use to be Guessed.
    ''')
    guesses = ""
    turns = 10
    
    while turns > 0:
        wrong = 0
        for char in word:
            if char in guesses:
                print (char, end="")
            else:
                print ("_", end="")
                wrong += 1
        if wrong == 0:
            print ("\nYou won!")
            break
            
        guess = raw_input("Guess a character: ")
        guesses += guess
        if guess not in word:
            turns -= 1
            print ("Incorrect")
            print ( str(turns) +" guesses left")
            if turns == 0:
                print ("You lost. The word was", word)
                
    print ("Game Over")

        