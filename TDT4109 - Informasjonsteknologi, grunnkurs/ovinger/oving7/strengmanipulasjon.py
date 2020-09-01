str1 = "iS"
str2 = "Is this the real life? Is this just fantasy?"
str1 = "oo"
str2 = "Never let you goooo let me goo. Never let me goo oooo"

# output -> [0, 5, 23, 28]
def find_substring_indexes(str1,str2):
    found = []
    str1,str2 = str1.lower(),str2.lower()
    length = len(str1)
    for i in range(len(str2)):
        if str2[i:i+length] == str1:
            found.append(i)
    return found
print(find_substring_indexes(str1,str2))

# output -> cool thcool the real life? cool thcool just fantasy?
# output -> Never let you gcoolcoolcool let me gcool. Never let me gcool coolcoolcool
str3 = "col"

def replace_substring(str1,str2,str3):
    indexes = find_substring_indexes(str1,str2)
    length,i = len(str1),0
    ny = ""
    while i < len(str2):
        if i in indexes:
            ny+=str3
            for j in range(length-1):
                if i+1 not in indexes: i+=1;
        else: ny+=str2[i];
        i+=1
    return ny
print(replace_substring(str1,str2,str3))
