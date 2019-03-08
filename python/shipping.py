def shipping():
    weight = input("Input the weight of your package: ")
    
    if 0 < weight <= 1:
        print("The package will cost $3.50 to ship.")
    elif 1 < weight <= 3:
        print("The package will cost $5.50 to ship.")
    elif 3 < weight <= 10:
        print("The package will cost $8.50 to ship.")
    elif 10 < weight <= 20:
        print("The package will cost $10.50 to ship.")
    elif 20 < weight:
        print("The package cannot be shipped")
    else:
        print("Error")