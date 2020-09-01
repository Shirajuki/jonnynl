# A
def separate(numbers, threshold):
    liste1,liste2 = [],[]
    for n in numbers:
        if n >= threshold:
            liste2.append(n)
        else:
            liste1.append(n)
    return liste1,liste2
print(separate([1,2,3,4,5,6,7,8,9,10,11,12],7))

# B
def multiplication_table(n):
    matrise = []
    for i in range(1,n+1):
        matrise.append([i*x for x in range(1,n+1)])
    return matrise
print(multiplication_table(3))
