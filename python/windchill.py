def windchill(ta, v):
    if -58 > ta or ta < 41:
        print("Not a valid tempature")
    elif v < 2:
        print("Not a valid wind speed")
    else:
        twc = 35.74 + 0.6215 * ta - 35.75 * v**0.16 + 0.4275 * ta * v**0.16
        print(twc)