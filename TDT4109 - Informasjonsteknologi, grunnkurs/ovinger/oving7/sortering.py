# A
# Bubble sort
liste1 = [9,1,34,7,2,3,45,6,78,56,36,65,33,21,23,34,45,6]
def bubble_sort(liste):
    while True:
        swap = 0
        for i in range(0,len(liste)-1):
            if liste[i] > liste[i+1]:
                liste[i],liste[i+1] = liste[i+1],liste[i]
                swap += 1
        if swap == 0:
            break
    return liste
print(bubble_sort(liste1))
# Output blir:
# [1, 2, 3, 6, 6, 7, 9, 21, 23, 33, 34, 34, 36, 45, 45, 56, 65, 78]

# B
# Selection sort
liste2 = [9,1,34,7,2,3,45,6,78,56,36,65,33,21,23,34,45,6]
def selection_sort(liste):
    ny_liste = []
    for i in range(len(liste)):
        ny_liste.insert(0,max(liste))
        liste.remove(max(liste))
    return ny_liste
print(selection_sort(liste2))
# Output blir:
# [1, 2, 3, 6, 6, 7, 9, 21, 23, 33, 34, 34, 36, 45, 45, 56, 65, 78]

# C
'''
bubble_sort: time_complexity: O(n**2)
selection_sort: time_complexity: O(n**2)
'''
