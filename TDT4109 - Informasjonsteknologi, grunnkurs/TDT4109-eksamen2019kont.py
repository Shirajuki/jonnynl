'''
- Hva står random i RAM for?
[ ] At det er tilfeldig hvor i minnet informasjonen lagres.
[ ] At datamaskinen henter informasjon fra et tilfeldig sted i minnet.
[x] At alle adresser kan hentes direkte. XXX
[ ] At det er tilfeldig hva som lagres i minnet.

- Hva er det som benyttes i dag som har erstattet vacuum tubes (vakuumrør)?
[x] Transistorer
[ ] CPU
[ ] RAM
[ ] Assembly

- Hvorfor er det ønskelig å bruke SSD fremfor en vanlig harddisk?
[ ] Det er lettere å lagre data permanent på en SSD.
[ ] En SSD øker minnet på grafikkortet slik at spill og lignende flyter bedre.
[x] I en SSD lagres data i elektroniske kretser. Det er ingen bevegelige deler, og dermed blir disken raskere og mer pålitelig.
[ ] En SSD er ikke så utsatt for strømtopper og tåler derfor mer enn en magnetisk disk

- Hva er et operativsystem?
[ ] Et system som operer med et lavnivåspråk, f.eks. assembly.
[ ] En prosess der kretser blir printet på en chip.
[ ] Et mye brukt grunnleggende lavnivåspråk som tar hånd om regneoperasjoner i en datamaskin.
[x] Grunnleggende operasjoner som er nødvendig for å kunne bruke maskinen effektivt, men som ikke er bygd inn i maskinvaren. XXX

- Hva er pipelining?
[ ] Et uttrykk for det som skjer når man skriver mye data til harddisken samtidig.
[x] En teknikk der en CPU kan utføre flere instruksjoner parallelt.
[ ] En teknikk som fungerer som en sikker tunnel mellom din maskin og en tjener.
[ ] En teknikk der man sender data mellom de forskjellige delene i maskinen i «pipes»

- Hva skjer om samplingsfrekvensen er for treg?
[ ] Nyquist-effekten vil forekomme
[ ] Man får konstant skurring
[x] Lydbølger kan forekomme mellom samplene, og man kan miste viktige segmenter av lyden
[ ] Man får mer eksakt gjengiving av lyden

- Hvilken av følgende komprimeringer er loss-less?
[ ] MPEG
[ ] JPEG
[ ] MP3
[x] Run-length koding

- Hvor mange symboler kan representeres med 6 bit?
[x] 64
[ ] 63
[ ] 128
[ ] 32

- Hvor mange bytes bruker UNICODE i "worst-case"?
[ ] 2
[x] 4
[ ] 3
[ ] 1

- Hva er latency?
[ ] tiden det tar å komprimere data
[ ] tiden en datamaskin bruker på å starte opp
[x] tiden det tar for informasjon å bli laget eller levert.
[ ] klokkehastigheten til en datamaskin

- Hva er unicast?
[ ] En type adressering der et subsett av datamaskinene i nettverket blir identifisert og mottar en kopi av pakken.
[ ] En type adressering der hver datamaskin i nettverket blir identifisert og mottar en kopi av pakken.
[ ] En type adressering som kan betraktes som en form for multicast.
[x] En type adressering der en enkelt datamaskin i nettverket blir identifisert og mottar pakken.

- Hva er en protokoll i nettverks-sammenheng?
[x] En protokoll beskriver prosedyrer for feilhåndtering og uventede hendelser.
[ ] En protokoll er et sett med regler over hvordan applikasjonslaget kommuniserer med nettverkslaget.
[ ] En protokoll beskriver innholdet i hver suite (familie).
[ ] En protokoll er en samling entiteter i et nettverk.

- Hvilken metode av flytkontroll er mest effektiv?
[x] Sliding window
[ ] Kontrollpakking
[ ] Sequencing
[ ] Stop-and-go

- Hva er sant om transportlaget i TCP/IP?
[x] Transportlaget sørger for at all data blir levert slik den ble sendt; komplett og i riktig rekkefølge.
[ ] Transportlaget består blant annet av spesifikasjoner om nettverksadressering og det maksimale antallet pakker som et nettverk kan støtte.
[ ] Transportlaget inneholder alle spesifikasjoner relatert til radiofrekvenser.
[ ] Transportlaget spesifiserer metoden for å dele en stor internett-pakke opp i flere små pakker for overføring.

- Hva er sant om syklisk sjekksum (Cyclic Redundancy Codes)?
[x] Syklisk sjekksum brukes i høyhastighetsnettverk fordi den godtar en melding med fast lengde og er ekstremt god til feildetektering.
[ ] En syklisk sjekksum beregning kan bli sett på som en matematisk operasjon i en Galoiskropp av 2. orden (Galois field of order 2).
[ ] Den avanserte matematikken som må til i syklisk sjekksum, gjør at en syklisk sjekksum-beregning tar for lang tid til å kunne brukes effektivt.
[ ] Single Parity Checking (SPC) detekterer oftere feil enn syklisk sjekksum

- Hva er phishing?
[x] Å opptre som en kjent nettside (f.eks. nettbank) for å få tak i personlig informasjon som f.eks. aksesskoder, kontonummer, etc.
[ ] Tap av åndsverk eller annen verdifull informasjon
[ ] Å fiske etter personlig informasjon ved å late som om maskinen er under virusangrep. Angriperen lover brukeren at feilen skal rettes opp dersom brukeren først oppgir kontonummeret sitt.
[ ] At uvedkommende tar kontroll over en brukers datamaskin.

- Hvordan kan man best sikre at data som kommer fram er identisk med de som ble sendt (sikre dataintegritet)?
[ ] Bruke passord
[ ] Bruke digitale signaturer
[x] Bruke hashing
[ ] Bruke kryptering

- Hvilken hensikt har brannmurer (firewalls)
[ ] De skal hindre minnelekkasjer i maskinen.
[x] De er ment til å beskytte nettsteds-integriteten.
[ ] De gjør at programtelleren har mulighet til å utføre flere instruksjoner på samme tid.
[ ] De er ment til å beskytte mot DoS(Denial of Service) og DDoS(distributed denial-of-service)

- Hvordan fungerer kryptering med privat nøkkel (i motsetning til kryptering med offentlig nøkkel)?
[ ] En offentlig nøkkel brukes både til å kryptere og dekryptere en melding.
[ ] Hver part får en hemmelig og en offentlig nøkkel. En melding kryptert med en offentlig nøkkel, kan kun dekrypteres med den korresponderende private nøkkelen.
[x] Partene deler en hemmelig nøkkel som brukes både for kryptering og dekryptering.
[ ] Senderens private nøkkel publiseres slik at mottaker kan dekryptere meldingen.

- Hva står VPN for?
[x] Virtual private network
[ ] Virtual protection network
[ ] Virtual policy network
[ ] Virtual packet network
'''
# 2a. Hva blir utskriften fra dette Python-programmet:
def myst(a,b):
    if (a > b):
        return a
    else:
        a *= -2 # 2,-4,8,-16,32
        return myst(a,b)
print(myst(-1,8))
# 32

# 2b. Hva blir skrevet ut når dette kjøres?
def myst2_bonus(noe):
    return "".join(noe[::-1])
def myst2(str):
    tmp = []
    for c in str:
        # 0123456789-abcdefghijklmnopqrstuvwxyz
        if ord(c) >= ord('a'): # o
            tmp.append(chr(ord(c)-1)) # nemaske eksamen
    return myst_bonus(tmp)
print(myst2('o4f5n6b7t8l9f'))
# eksamen

# 2c. Hva blir resultatet når denne koden kjøres?
def myst3(a,b,c):
    c += 1 # FF1 TF2 FT3 TT4
    if not a:
        return myst3(not a,b,c) # myst3(T,F,1), myst3(T,T,3)
    if (a and b):
        return c #4
    elif (not a and not b):
        return myst3(not a,b,c)
    elif (a and not b):
        return myst3(not a,not b, c) #myst3(F,T,2)
    else:
        return myst3(a,not b)
print(myst3(False, False, 0))
# 4

# 2d. Hva skrives ut når denne koden kjøres:
def myst4(x, y):
    tmp1 = 0 # 0
    for a in x:
        tmp2 = 0
        # a = 5
        for b in y:
            if b > a: #
                tmp2 += b-a # 1
        tmp1 += tmp2 # 15+10+6+3+1
    return tmp1 # 35
print(myst4([0,1,2,3,4,5],[5,4,3,2,1,0]))
# 35

# 2e. Hva skrives ut når dette programmet kjører?
def myst5(hmm):
    svar = 0
    for x in range(1,len(hmm)-1): #[9836 56 5 890]
        if hmm[x+1] > hmm[x]:
            svar = svar + int(hmm[x])#3+5+5+8
    return svar
print(myst5(19836565890))
# 21

# 2f. Gitt variabelen tekst med innhold som under:
'''
Her mangler bokstavene g og h etter f. Hvordan kan du sette disse bokstavene inn på rett plass i teksten?
tekst = 'abcdefijklmnopqrstuvwxyz'

tekst = list(tekst)
tekst[6:6] = 'gh'
tekst = ''.join(tekst)
'''

'''
Food.txt:
---------
pannekaker: egg, mel, salt, melk
grandiosa: grandiosa
paprikasaus: sjalottløk, hvitløk, olje, buljong, smør, salt, pepper
omelett: egg, vann, salt, smør, skinke, hvitost, paprika
'''
# 3-1
def read_file(filename):
    file = open(filename,'r')
    liste = []
    for line in file:
        liste.append(line)
    file.close()
    return liste
print(read_file('food.txt'))

# 3-2
def fix_ingredients(string):
    return string[:-2].split(', ')
print(fix_ingredients('pannekaker: egg, mel, salt, melk\n'))

# 3-3
def food_dict(foodlist):
    dict = {}
    for food in foodlist:
        fixedFood = fix_ingredients(food) #['pannekaker: egg','mel','salt','melk']
        key = fixedFood[0].split(': ') # ['pannekaker','egg']
        value = [key[1]] + fixedFood[1:] # ['egg','mel']
        dict[key[0]] = value
    return dict
mat = read_file('food.txt') #liste
food_dict = make_dict(mat)
print(food_dict)

# 3-4
def print_recipe(ordbok,matrett):
    matrett = matrett.lower()
    values = ordbok.get(matrett,[]) #['egg, mel, salt, melk']
    if values == []:
        print(f'No dish called {matrett}')
    else:
        print(f'{matrett} has {len(values)} {"ingredient" if len(values) == 1 else "ingredients"}: {", ".join(values)} ')
food_dict = make_dict(read_file('food.txt'))
print_recipe(food_dict,'pannekaker')
# pannekaker has 4 ingredients: egg, mel, salt, melk
# No dish called [name]

# 3-5
def all_recipes_with(food):
    # keys,values = food.items()
    # values = set(values)
    dict = {}
    keys = food.keys() # [pannekake..]
    values = set(list(food.values())]) # [egg,mel,ost,skinke..]
    for value in values:
        liste = []
        for key in keys:
            if value in food.get(key,[]):
                liste.append(key)
        dict[value] = liste
    return dict
food_dict = make_dict(read_file('food.txt'))
recipe_dishes = all_recipes_with(food_dict)

# 3-6
import random
def random_recipe(ingredient):
    food_dict = make_dict(read_file('food.txt'))
    recipe_dishes = all_recipes_with(food_dict)
    food_list = recipe_dishes.get(ingredient,[])
    food = ''
    if food_list != []:
        rnd = random.randint(0,len(food_list)-1)
        food = food_list[rnd]
    print(f"Today you'll be eating {food}")
    print_recipe(food_dict,food)

# 3-7
def value_chr(string):
    value = 0
    for c in string:
        if c in "aeiouyæøå":
            value += 5
        else:
            value += 1
    return value

def value_food(food):
    dict = {}
    expensive = ['',0]
    for key,values in food.items():
        value = sum([value_chr(string) for string in values])
        if (value > expensive[0]):
            expensive = [key, value]
    print(f'Den dyreste retten er {expensive[0]} som koster {expensive[1]}')
value_food(food_dict)
