# One-time-pad
'''
m = bokstav i ordet M
k = hemmelig bokstav fra ordet K
c = m XOR k (den krypterte bokstaven i C)
(dvs. 1101 XOR 1011 = 0110)

m = c XOR k
XOR = ^
'''
import binascii
def toHex(word):
    return int(str(binascii.hexlify(word), 'ascii'), 16)
def toString(word):
    return str(binascii.unhexlify(hex(word)[2:]), 'ascii')

# string = bytes(string, encoding = 'ascii')

def encrypt(message, key):
    if len(message) == len(key):
        message,key = bytes(message, encoding = 'ascii'),bytes(key, encoding = 'ascii')
        message,key = toHex(message),toHex(key)
        return message ^ key
print(encrypt('hei','abc')) #msg='hei', key='abc'
# output -> 591626

def decrypt(code, key):
    key = toHex(bytes(key, encoding = 'ascii'))
    message = code ^ key
    return toString(message)
print(decrypt(591626,'abc')) #key = 'abc', code = 591626
# output -> hei

def main():
    key = ' eB oaBdgr ,nodbGt' # 2822049566335617100224819606624996016932724
    message = input("Hva er meldingen?") #God dag, Bob Bernt
    # message = "God dag, Bob Bernt"
    kode = encrypt(message,key)
    print(f'Krypto: {kode}')
    print(decrypt(kode,key))
main()
