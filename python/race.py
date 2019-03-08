def runners():
    runner1 = raw_input('''
    Please Enter The 1st Runner's Name
    ''')
    time1 = raw_input('''
    Please Enter the 1st Runner's Time
    ''')
    
    runner2 = raw_input('''
    Please Enter The 2nd Runner's Name
    ''')
    time2 = raw_input('''
    Please Enter the 2nd Runner's Time
    ''')
    
    runner3 = raw_input('''
    Please Enter The 3rd Runner's Name
    ''')
    time3 = raw_input('''
    Please Enter the 3rd Runner's Time
    ''')
    
    race = [runner1, time1, runner2, time2, runner3, time3]
    print race


def race():
    
    if times[0] > times[1]:
        temp = times[0]
        times[0] = times[1]
        times[1] = temp
        temp1 = runner1
        runner2 = times[0]
        runner1 = temp1
    if times[1] > times[2]:
        temp = times[1]
        times[1] = times[2]
        times[2] = temp
    if times[0] > times[1]:
        temp = times[0]
        times[0] = times[1]
        times[1] = temp
     
    