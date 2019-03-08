def how_eligible(essay):
    count = 0
    if "?" in essay:
        count = count + 1
    if "," in essay:
        count = count + 1
    if "!" in essay:
        count = count + 1
    if "\"" in essay:
        count = count + 1
    print(count)