guess = ['red', 'red', 'red', 'green', 'yellow']
secret = ['red', 'red', 'yellow', 'yellow', 'black']
def report_guess(guess, secret):
  right = 0
  wrong = 0
  for a in guess:
    if a in secret:
      right += 1

  
  print(right)
  
    
