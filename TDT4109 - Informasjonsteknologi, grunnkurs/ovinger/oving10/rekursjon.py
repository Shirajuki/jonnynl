# A
def recursive_sum(n):
    if n<=0:
        return 0
    return n+recursive_sum(n-1)
print(recursive_sum(53))
# 1431

# B
def merge_sum(liste):
    # print(liste)
    if len(liste)==1:
        return liste[0]
    return liste[0]+merge_sum(liste[1:])
print(merge_sum([1,2,3,4,5,6]))
# 15

# C
def find_smallest_element(numbers):
    # print(numbers)
    if len(numbers)==1:
        return numbers[0]
    elif numbers[0] < numbers[1]:
        return find_smallest_element([numbers[0]]+numbers[2:])
    else:
        return find_smallest_element(numbers[1:])
print(find_smallest_element([5,3,2,6]))
# 2

# D
# def binary_search(numbers,element,minimum,maximum):
#     middle = (minimum+maximum)//2
#     if minimum > maximum:
#         return (-float('inf'))
#     if numbers[middle] == element:
#         return middle
#     elif numbers[middle] < element: # høyre
#         return binary_search(numbers[middle+1:],element,middle+1,maximum)
#     else:
#         return binary_search(numbers,element,minimum,middle-1)

# D
def binary_search(numbers, element):
    middle = len(numbers)//2
    if not numbers:
        return (-float('inf'))

    if numbers[middle] == element:
        return middle
    elif numbers[middle] < element: # høyre
        return middle+1 + binary_search(numbers[middle+1:], element)
    else:
        return binary_search(numbers[:middle], element)

liste = [1,2,3,4,5,6,7,8,9,10]
print(binary_search(liste,9))

# function binary_search(A, n, T):
#     L := 0
#     R := n − 1
#     while L <= R:
#         m := floor((L + R) / 2)
#         if A[m] < T:
#             L := m + 1
#         else if A[m] > T:
#             R := m - 1
#         else:
#             return m
#     return unsuccessful
