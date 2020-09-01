pos = input('Tast inn posisjonen du vil ha farge til: ') #'a5' byttes ut med en input()-setning
bokstav = pos[0].lower() #gir variabelen bokstav verdi 'a'
tall = int(pos[1]) #gir variabelen tall verdi 5
# TBD: legg til mer kode her
run = True
if (len(pos) != 2):
    print("Feil input. Du må skrive akkurat to tegn")
    run = False
if (bokstav not in list('abcdefgh') or tall > 8 or tall < 1):
    print('Feil input.\nFørste tegn må være en bokstav A-H eller a-h\nAndre tegn må være et tall 1-8')
    run = False
if (run):
    if (bokstav in list('aceg')):
        if (tall%2 == 0):
            print('Hvit')
        else:
            print('Svart')
    else:
        if (tall%2 == 0):
            print('Svart')
        else:
            print('Hvit')
