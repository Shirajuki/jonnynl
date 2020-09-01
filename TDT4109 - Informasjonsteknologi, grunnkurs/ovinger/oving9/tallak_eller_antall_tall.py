# A
def number_of_lines(filename):
    file = open(filename, 'r')
    number=0
    for line in file:
        number+=1
    file.close()
    return number
print(number_of_lines('numbers.txt'))

# B
def number_frequency(filename):
    file = open(filename, 'r')
    dict_frequency = {}
    for line in file:
        line = int(line)
        if line not in dict_frequency:
            dict_frequency[line] = 1
        else:
            dict_frequency[line] += 1
    file.close()
    # C
    for key,value in dict_frequency.items():
        print(f"{key}: {value}")
    return dict_frequency
print(number_frequency('numbers.txt'))
