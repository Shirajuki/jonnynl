from random import randint
def random_matrise(bredde, hoyde):
    matrise = []
    for i in range(hoyde):
        matrise.append([randint(0,11) for x in range(bredde)])
    return matrise

def print_matrise(matrise, navn):
    navn = f'{navn}=['
    print(navn)
    for m in matrise:
        print(f'{len(navn)*" "}{m}')
    print(f'{(len(navn)-1)*" "}]')


def matrise_addisjon(a, b):
    matrise = []
    if len(a) == len(b) and len(a[0]) == len(b[0]):
        for hoyde in range(len(a)):
            liste = []
            for bredde in range(len(a[hoyde])):
                liste.append(a[hoyde][bredde] + b[hoyde][bredde])
            matrise.append(liste)
        return matrise
    else:
        return print('Matrisene er ikke av samme dimensjon # A og B har ulike dimensjoner (ulikt antall rader og kolonner)')

def main():
    A = random_matrise(4,3)
    print_matrise(A, 'A')
    B = random_matrise(3,4)
    print_matrise(B, 'B')
    C = random_matrise(3,4)
    print_matrise(C, 'C')
    D = matrise_addisjon(A,B)
    E = matrise_addisjon(B,C)
    print_matrise(E, 'B+C' )
main()
