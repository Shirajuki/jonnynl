teeth = [95,103,71,99,114,64,95,53,97,114,109,11,2,21,45,2,26,81,54,14,118,108,117,27,115,43,70,58,107]
mynter = []
for g in teeth:
    kr20 = g//20
    kr10 = g%20//10
    kr5 = g%20%10//5
    kr1 = g%20%10%5
    mynter.append([kr20,kr10,kr5,kr1])

print(mynter)
for m in mynter:
    print(f"20: {m[0]} , 10: {m[1]} , 5: {m[2]} , 1: {m[3]}")
