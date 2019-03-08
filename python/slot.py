import random

def slot():
    while play == 0:
        
        wager = input('''
        Enter the Amount of Money You Would Like to Wager: 
        ''')
        icons = ("Cherries", "Orange", "Plums", "Bells", "Melon", "Bars")
        result  = []
        for spin in range(3):
            spinned = random.randint(0,5)
        