def report_grade(percent):
    if percent <= 79:
        print("A grade of 79 does not indicate mastery.")
        print("Seek extra practice or help.")
    elif percent >= 80:
        print("A grade of 85 indiciates Mastery.")
        print("Keep up the good work!")
    else:
        print("Error")
        
def letter_in_word(guess, word):
    if guess in word:
        return True
    else:
        return False

def hint(color):
    secret = ['red','red','yellow','yellow','black']
    if color in secret:
        print("The color " + color + " IS in the secret sequence of colors.")
    else:
        print("The color green IS NOT in the secret sequence of colors.")

