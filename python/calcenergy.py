def calcEnergy():
    m = input("Enter the water in Kilograms: ")
    it = input("Enter the inital temperature: ")
    ft = input("Enter the Final temperature: ")
    
    q = m * (ft -it) * 4184
    q = str(q)
    print("The energy needed is " + q)