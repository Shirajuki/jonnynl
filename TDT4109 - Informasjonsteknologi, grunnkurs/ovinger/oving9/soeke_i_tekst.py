# A
def read_from_file(filename):
    file = open(filename,'r')
    text = ''
    for line in file:
        text+=line
    return text
read_text = read_from_file('alice_in_wonderland.txt')
print(read_text)

# B
def remove_symbols(text):
    # sletter vekk tall, komma, punktum og fnutter
    text = "".join([ch for ch in text.replace('\n',' ').lower() if ch.isalpha() or ch.isspace()])
    return text
filtered_text = remove_symbols(read_text)
print(filtered_text)

# C
def count_words(filename):
    dict = {}
    text = remove_symbols(read_from_file(filename)).split()
    for word in text:
        if word not in dict:
            dict[word] = 1
        else:
            dict[word] += 1
    return dict
# print(count_words('alice_in_wonderland.txt'))

# D
alice_dict = count_words('alice_in_wonderland.txt')
for word, value in alice_dict.items():
    print(word, value)
