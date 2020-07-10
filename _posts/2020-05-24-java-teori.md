---
layout: post
tags: TDT4100
categories: TDT4100
---

# Innkapsling og validering - Teorispørsmål

1. a) Hva er forskjellen på **public**, **protected** og **private**?**public**<span style="color:#ff7e7e;"> brukes når andre klasser skal kunne instansiere klassen direkte med </span>**new <klasse&gt;(…)**<span style="color:#ff7e7e;">. </span>**protected**<span style="color:#ff7e7e;">-konstruktører brukes for å initialisere felt i en superklasse og kalles av subklassens konstruktør med </span>**super(…)**<span style="color:#ff7e7e;">. </span>**private**<span style="color:#ff7e7e;"> brukes på hjelpekonstruktører internt i en klasse og kalles med </span>**this(…)**<span style="color:#ff7e7e;">.</span>b) Hva bør i utgangspunktet alle variablene dine være deklarert som? <span style="color:#ff7e7e;">Innkapsling handler om å: 1) hindre at en kan sette objekter til en ulovlig tilstand og 2) skjule representasjonsdetaljer slik at en kan gjøre endringer uten at andre klasser også må endres. </span>

2. Hvilke to metoder er vanlig å ha for variabler i Java? <span style="color:#ff7e7e;">Generelt er det en fordel å redusere settet med metoder, siden det gir frihet til å endre klasse siden. Når felt initaliseres i en konstruktør, så trengs som oftest ikke set-metoder. Her trenger en heller ikke get-metoder, siden metodene som stiller spørsmål og sjekker svar utgjør et komplett API for klassen.</span><span style="color:#ff7e7e;">get-metoder gir tilgang til tilstanden uten å "avsløre” hvilke felt som brukes for å representere tilstanden.</span>

3. Hva er forskjellen på ugyldig tilstand og ugyldig argument? <span style="color:#ff7e7e;">Hva er formålet med / begrunnelsen for å implementere en eller flere konstruktører for en klasse : En konstruktør har som formål å </span>*initialisere *<span style="color:#ff7e7e;">et objekt, slik at det fra starten av har en </span>*gyldig *<span style="color:#ff7e7e;">tilstand.</span>

4. Hva er meningen med innkapsling og validering? <span style="color:#ff7e7e;">Innkapsling skal sikre et objekt starter og forblir i en </span>*gyldig tilstand*<span style="color:#ff7e7e;"> og at innholdet kan leses og endres uten å avdekke den </span>*interne representasjonen og implementasjonen*<span style="color:#ff7e7e;">. Mekanismen er bruk av synlighetsmodifikatorer, som reduserer muligheten (andre) klasser har til å referere til felt og metoder.</span><span style="color:#ff7e7e;">En kan kategorisere innkapslingsmetoder som enten lese- eller endringsmetoder. Den viktigste oppgaven til endringsmetodene, bortsett fra å utføre selve endringen er å sjekke (validere) om den nye verdien (eller nye verdiene) er lovlige/gyldige, før de evt. endres, f.eks. at et navn kun inneholder bokstaver og mellomrom.</span>

5. Trenger man å validere argumenter som tas inn i konstruktøren? 

**public final int hours, minutes;final**<span style="color:#ff7e7e;"> betyr her at feltet ikke kan endres </span>*etter*<span style="color:#ff7e7e;"> at det er satt i konstruktøren. </span><span style="color:#ff7e7e;">Selv om feltene er </span>**public**<span style="color:#ff7e7e;"> så sikres innkapsling ved at felt-verdiene forblir korrekte, siden kode utenfor klassen ikke kan sette feltene til ugyldige verdier Imidlertid er det ikke i tråd med innkapsling at kode gjøres avhengig av at data er lagret i spesifikke felt. Ved bruk av get-metoder får implementasjonsklassen større frihet til å endre interne detaljer, uten at annen kode blir påvirket.</span>

**final**<span style="color:#ff7e7e;"> betyr her at feltet ikke skal kunne endres etter at det er initialisert. Da må en enten initialisere i deklarasjonen eller i en eller flere konstruktører, eller en kombinasjon.</span><span style="color:#ff7e7e;">Klasser utformet slik at instanser ikke skal kunne endres etter at de er opprettet, </span>*generelle*<span style="color:#ff7e7e;"> fordeler og ulemper med klasser som gir ikke-modifiserbare (immutable) instanser er at klassen blir enklere, og minsker bl.a. behovet for validering. Instanser kan brukes av flere deler av et program, uten risiko for at en del endrer på dem og ødelegger for en annen del. Ulempen er at en må lage nye instanser hvis de må rettes på, istedenfor å endre dem direkte.</span>

<span style="color:#ff7e7e;">Den generelle teknikken og navnekonvensjonen(e) for å representere og kapsle inn en enkel verdi, f.eks. tall eller objektreferanse, som skal kunne endres etter at objektet er opprettet:</span>**private T value;public T getValue() { … }**<span style="color:#ff7e7e;">(Dersom X er boolean/Boolean, så brukes gjerne "is” som prefiks istedenfor ”get”).</span>**public void setValue(T value) { … }**

<span style="color:#ff7e7e;">Med static-modifikatoren vil metodene ikke kunne referere til et bestemt RadioAlphabet-objekt. En kan for så vidt gjøre alfabetet static også, men da vil en bare kunne ha ett globalt alfabet.En metode kan være </span>**static**<span style="color:#ff7e7e;"> siden den ikke bruker felt eller metoder som er ikke-</span>**static**<span style="color:#ff7e7e;">.</span>

<span style="color:#ff7e7e;">I forhold til innkapsling, hovedgrunnen til å la en konstruktør ta en eller flere parametre : Parametrene til en konstruktør er informasjon som trengs for å gi objektet en gyldig starttilstand, som oftest verdien til felt som må være satt og det ikke finnes noen fornuftig default-verdi.</span>

<span style="color:#ff7e7e;">Java ved gitte forutsetninger vil automatisk opprette en konstruktør for en klasse, slik at instanser av klassen kan opprettes, selv om en ikke eksplisitt har definert en konstruktør for klassen. Betingelsen(e) for at Java skal gjøre dette : Forutsetningen for å automatisk opprette en konstruktør er at den er instansierbare dvs. ikke abstrakt, og det ikke er definert noen andre konstruktører. En slik konstruktør vil være </span>**public**<span style="color:#ff7e7e;"> og ha tom parameterliste.</span>

<span style="color:#ff7e7e;">En annen teknikk for initialisering enn deklarasjon er å bruke en eller flere konstruktører. Dette er metoder med samme navn som klassen som blir implisitt kalt ved bruk av new (med eller uten argumenter). </span><span style="color:#ff7e7e;">Fordeler</span><span style="color:#ff7e7e;">:	- en kan skrive mer komplisert kode for initialisering, med f.eks. valg og validering	- en kan (tvinges til å) oppgi argumenter som kan brukes i initialiseringen	- konstruktører hjelper en å sikre tilstand ved bruk av innkapsling</span><span style="color:#ff7e7e;">Ulemper</span><span style="color:#ff7e7e;">:	- koden for initialisering blir ofte langt unna feltene den initialiserer	- det er lett å glemme å initialisere felt</span>

<span style="color:#ff7e7e;">Dette handler om</span><span style="color:#ff7e7e;">[ innkapslin</span>g](https://www.ntnu.no/wiki/display/tdt4100/Innkapsling)<span style="color:#ff7e7e;">, som har to aspekter: 1) sikring av gyldig tilstand og 2) skjuling av implementasjonsdetaljer, så koden lettere kan endres uten at andre klasser påvirkes. Av disse to er aspekt 1) viktigst.</span>

<span style="color:#ff7e7e;">Den første teknikken krever mindre kode og er derfor enklere å lese og skrive. Siden en bruker </span>**final**<span style="color:#ff7e7e;">-modifikatoren så sikres aspekt 1), siden verdiene/tilstanden ikke kan endres tross at feltet er </span>**public**<span style="color:#ff7e7e;">. Imidlertid så er det andre aspektet ved innkapsling ikke ivaretatt, siden feltet er eksponert. Derfor er den andre teknikken å foretrekke, som ivaretar begge aspektene.</span>

<span style="color:#ff7e7e;">Objekter som ikke kan endres, kan deles/brukes i flere datastrukturer uten fare for kluss. Hvis delte objekter kan endres, så må en være mer nøye på hva en gjør.</span>

<span style="color:#ff7e7e;">finne passende datastruktur og innkapslingsmetoder. En trenger bare én add-metode, selv om det er vist to har. For å gå gjennom segmentene trenger en både én metode for </span>**count/size**<span style="color:#ff7e7e;"> (ellers vet en ikke når iterasjonen skal stoppe) og én for å hente ut et element.Det var veldig mange som lurte på formuleringen "gå gjennom dem basert på indeks”, antageligvis fordi det ikke var sagt at dette var </span>*innkapsling for andre klasser*<span style="color:#ff7e7e;">, ikke til bruk internt i klassen.</span>

# Grensesnitt/Interface - Teorispørsmål

1. Hvilket nøkkelord i Java brukes for å angi at en klasse implementerer et grensesnitt?

2. Hva er forskjellen på en klasse og et grensesnitt?

3. Nevn tre bruksområder hvor det er en fordel å bruke grensesnitt.

4. Kan grensesnitt definere private metoder? 

    1. Hvorfor gir/gir ikke dette mening?

5. Kan et grensesnitt implementere et annet grensesnitt?

6. Kan et grensesnitt arve et annet grensesnitt?

7. Hva er forskjellen på å implementere et grensesnitt og å arve fra en annen klasse?

8. Hva er forskjellen på en abstrakt klasse og et grensesnitt?

    2. Hvilke muligheter har man i en abstrakt klasse som man ikke har i et grensesnitt?

9. Definer (skriv ned) et grensesnitt etter hukommelsen. 

10. Kan et grensesnitt inneholde variabler?

    3. Hva må eventuelt en variabel deklareres som for å være tillatt i et grensesnitt?

11. Kan et grensesnitt definere konstruktører?

<span style="color:#ff7e7e;">Et grensesnitt skal ikke ha konstruktører og statiske metoder. Det er faktisk lov å ha statiske metoder i grensesnitt i Java, men det hører ikke med i objektorientert tenkning.</span>

<span style="color:#ff7e7e;">Dice-grensesnittet </span>*må *<span style="color:#ff7e7e;">utvide (extends) Iterable<Integer> </span>*og kan *<span style="color:#ff7e7e;">liste opp metoden(e) fra Iterable. for et grensesnitt kan gjenta metoder fra et grensesnitt det utvider, men må ikke. </span>

# Arv - Teorispørsmål

1. Hva er forskjellen på en abstrakt klasse og et grensesnitt?<span style="color:#ff7e7e;">En abstrakt klasse er en klasse som ikke kan instansieres, enten fordi den er ufullstendig ved at den deklarerer én eller flere abstrakte (tomme) metoder, eller fordi det ikke gir mening. Ingen av de tre klassene bør være abstrakte, siden alle er fullstendige og implementerer en nyttig relasjon.</span>

2. Hvilke krav må en subklasse oppfylle for at det skal være naturlig for den å arve fra en superklasse?

3. Hvilket nøkkelord brukes for å arve fra en annen klasse i Java?

4. Hvor mange klasser kan en subklasse arve fra?

5. Du har tre klasser: Human, Person og Student. Student arver fra Person, og Person arver fra Human. Du lager et objekt av hver klasse: human, person, student.

    1. Har student tilgang til feltene og metodene i Human?

    2. Hva vil "human instanceof Student" returnere?

    3. Hva vil "student instanceof Human" returnere?

6. Når en subklasse arver fra en superklasse, får den tilgang til konstruktørene til superklassen?

    4. Når får den eventuelt (ikke) det?

7. Forklar hvordan bruk av protected-felt/metoder fungerer ved arv.

8. Kan man instansiere en abstrakt klasse?<span style="color:#ff7e7e;">2 klasser har en del felles egenskaper, som kan samles i en felles superklasse kalt </span>**MenuItem**<span style="color:#ff7e7e;">:</span><span style="color:#ff7e7e;">Her er poenget å samle det som er felles. Klassen bør være abstract, siden det ikke gir mening å instansere den.</span>

9. Er det nødvendig å bruke annotasjonen @Override når man redefinerer en arvet metode?

10. Du har arvet en metode fra en superklasse og redefinert den i din egen klasse. Hvordan kan man bruke metoden som var definert i superklassen?

11. Du skriver din egen konstruktør i en subklasse, men ønsker å kalle superklassens konstruktør for å slippe å kopiere kode. Hvordan gjør du dette?

<span style="color:#ff7e7e;">- Når en arver så kan en ikke kun arve de metodene en ønsker, men får alle med på kjøpet. Da vil en være nødt til å redefinere alle en ikke trenger/ønsker at skal være tilgjengelig.- </span><span style="color:#ff7e7e;">Det vil ikke alltid være logisk riktig at klassen skal være </span>**instanceof List<X>**<span style="color:#ff7e7e;">- </span><span style="color:#ff7e7e;">(Teknikken kan bare brukes for én slik liste, siden en bare kan arve fra én implementasjonsklasse).</span>

**super()**<span style="color:#ff7e7e;"> kaller konstruktøren i superklassen og trengs for å sikre at også superklassens konstruktør blir kjørt. Her er super-klassen implisitt Object-klassen. Hvis linja ikke er med, så vil et tilsvarende kall, altså til en konstruktør uten argumenter, bli lagt til av kompilatoren. Derfor kan vi trygt fjerne linja.</span>

<span style="color:#ff7e7e;">Poenget her at siden </span>**Course**<span style="color:#ff7e7e;"> og </span>**Meal**<span style="color:#ff7e7e;"> nå har en felles superklasse, så blir det enklere å ha datastrukturer med begge disse objekttypene i. Dette forenkler både </span>**Menu**<span style="color:#ff7e7e;">- og </span>**Table**<span style="color:#ff7e7e;">-klassene. En blir her bedt om å skrive mye kode på nytt, og siden eksamen var digital, så bør det være greit i praksis. Det er greit å bare skrive de delene som blir endret, til nød forklare endringene med tekst.</span>

<span style="color:#ff7e7e;">Det disse tre implementasjonene har felles er </span>**score**<span style="color:#ff7e7e;">-verdien, så denne kan legges i den abstrakte </span>**AbstractScorer**<span style="color:#ff7e7e;">-klassen, initialiseres ved å kalle </span>**super(score)**<span style="color:#ff7e7e;"> øverst i subklasse-konstruktørene og leses med </span>**getScore()**<span style="color:#ff7e7e;">:</span>

<span style="color:#ff7e7e;">En antar at det finnes ulike klasser for ulike typer fremkomstmidler en kan leie. Hver type skal kunne ha sine egne sett med verdier brukt til prising, f.eks. pris pr. time og pris pr. Tidsforlengelse. Hvordan arvingsmekanismen kan benyttes?- Det naturlige er da å lage en abstrakt klasse </span>**Vehicle**<span style="color:#ff7e7e;"> som inneholder priselementer (pris per time, forsentbot etc) og gettere/settere (som </span>**getHourRate**<span style="color:#ff7e7e;">, </span>**setLocation**<span style="color:#ff7e7e;"> m.m). Ikke alle av disse trenger å være abstrakte, eksempelvis kan det som har med lokasjon å gjøre være implementert i Vehicle. Alle fremkomstmidler (</span>**Bike**<span style="color:#ff7e7e;">, </span>**Hoverboard**<span style="color:#ff7e7e;"> og slikt) og må så arve denne klassen og kan redefinere metoder for å endre verdiene/logikken som brukes i prisberegningen. Der en i </span>**BikeRental**<span style="color:#ff7e7e;"> (som egentlig burde skifte navn til </span>**VehicleRental**<span style="color:#ff7e7e;">) refererer til </span>**Bike**<span style="color:#ff7e7e;"> må en nå i stedet referere til den abstrakte klassen </span>**Vehicle**<span style="color:#ff7e7e;">.</span>

<span style="color:#ff7e7e;">Vi lager en abstrakt klasse basert på Trip og gjør estimateTime abstract:Så lar vi Trip arve fra denne og implementere estimateTime som over.Andre varianter (interface) vil gjøre det samme, men implementere estimateTime med annen logikk. Det er strengt tatt ikke nødvendig å ha en abstrakt klasse, en kan alternativt bare arve fra Trip.</span>

**SimpleTable**<span style="color:#ff7e7e;"> og </span>**CompositeTable**<span style="color:#ff7e7e;"> blir subklasser av Table, som selv enten blir et grensesnitt eller en abstrakt klasse med i hvertfall </span>**getCapacity**<span style="color:#ff7e7e;">-metoden. De to variantene er vist under. </span>**SimpleTable**<span style="color:#ff7e7e;"> kan ta over det meste av </span>**Table**<span style="color:#ff7e7e;">-koden, evt. arve alt. </span>**CompositeTable**<span style="color:#ff7e7e;"> kapsler inn informasjonen fra </span>**mergeTable**<span style="color:#ff7e7e;"> og bruker de to </span>**Table**<span style="color:#ff7e7e;">-objektene til å beregne kapasiteten. Alternativt kan </span>**Table**<span style="color:#ff7e7e;"> beholde </span>**capacity**<span style="color:#ff7e7e;">-feltet og </span>**getCapacity()**<span style="color:#ff7e7e;">-metoden og de to andre initialiserer </span>**capacity**<span style="color:#ff7e7e;"> med </span>**super(...)**<span style="color:#ff7e7e;">. Vi har her ikke lagt opp til at </span>**CompositeTable**<span style="color:#ff7e7e;">-objekter skal få et løpenummer, men det er greit å la den funksjonaliteten være en del av en abstract </span>**Table**<span style="color:#ff7e7e;">-(super)klasse.</span>

<span style="color:#ff7e7e;">Her er poenget å skille ut det som har med </span>**score**<span style="color:#ff7e7e;"> å gjøre i en abstrakt superklasse, nemlig feltet </span>**score**<span style="color:#ff7e7e;">, (den delen av) konstruktøren som tar inn og setter </span>**score**<span style="color:#ff7e7e;"> og </span>**getScore**<span style="color:#ff7e7e;"> og </span>**setScore**<span style="color:#ff7e7e;">. Dette er viktigst.- Hvis en lar den abstrakte superklassen implementere Dice-grensesnittet evt. deklarer en del av Dice sine metoder som abstrakte metoder, så kan enda flere metoder implementeres, f.eks. trenger toString og getValueCount bare getDieCount og getDieValue. En trenger ikke implementere disse, men forklare at det går an og vil være lurt.</span>

# Delegering - Teorispørsmål

1. Forklar forholdet mellom en delegat og en delegerende.<span style="color:#1155cc;">[Delegeringsteknikke</span>n](https://www.ntnu.no/wiki/display/tdt4100/Delegeringsteknikken)<span style="color:#ff7e7e;"> i praksis, hvor en instans av (en implementasjon av) et grensesnitt bruker en eller flere andre instanser av (implementasjoner av) samme grensesnitt, til å gjøre jobben.</span>

2. I et firma med en Manager og flere Coworkers, hvem er naturlig de(n) delegerende og hvem er delegat(er)? 

3. Forklar hvordan det kan være nyttig å benytte grensesnitt i forbindelse med delegering.

    1. Ved å benytte grensesnitt for en delegat-klasse, hvilke fordeler får man?

4. Når kan det være smart å benytte delegeringsteknikken fremfor arv?

<span style="color:#ff7e7e;">Delegering er en teknikk hvor et objekt, videreformidler kall til en "delegat” når det er behov for delegatens ferdigheter. I dette tilfellet er det viktig at TimeSlot-objektene som ligger i delegaten regnes med i logikken. F.eks. må </span>**getTimeSlotAt(…)**<span style="color:#ff7e7e;">-metoden sjekke egne TimeSlot-objekter og delegatens og returnere det tidligste av de to.</span>

<span style="color:#ff7e7e;">I del 2 ble utregning av kostnad ‘hardkodet’ inn i </span>**rentBike**<span style="color:#ff7e7e;">. Hvis man skal støtte utregning av kostnader ved hjelp av delegering, så må man lage et grensesnitt (interface) som inneholder en metode for beregning av pris. I LF har vi laget grensesnittet </span>**PricePolicy**<span style="color:#ff7e7e;">, som blir implementert av klassen </span>**DefaultPricePolicy**<span style="color:#ff7e7e;">. I del 2 ble all beregning gjort i en egen hjelpemetode, </span>**computePrice**<span style="color:#ff7e7e;">. Det er derfor helt greit at grensesnittet inneholder nettopp denne metoden. I </span>**BikeRental**<span style="color:#ff7e7e;"> må en så opprette et </span>**DefaultPricePolicy**<span style="color:#ff7e7e;">-objekt, og kalle dennes </span>**computePrice**<span style="color:#ff7e7e;"> for å beregne pris. Hvis en vil bruke en annen prisingslogikk, så bruker man bare en annen implementasjon.</span>

<span style="color:#ff7e7e;">en kan også bruke delegering for å tilby </span>*individuell*<span style="color:#ff7e7e;"> prising (altså pr. </span>**Person**<span style="color:#ff7e7e;">), f.eks. Bonus-ordninger: I 3a ble det lagt opp til delegering av kostnadsberegning, men dette var ikke knyttet til enkeltpersoner. For å implementere individuell prising kan en heller lage et sett med ulike </span>**PricePolicy**<span style="color:#ff7e7e;">, (studenter, barn, voksne etc.) og knyttet disse til </span>**Person**<span style="color:#ff7e7e;">-objektet (med gettere og settere). Når </span>**rentBike**<span style="color:#ff7e7e;"> skal beregne kostnad må en så delegere til </span>**Person**<span style="color:#ff7e7e;">-objektet (som igjen ligger i </span>**Bike**<span style="color:#ff7e7e;">) sin </span>**PricePolicy**<span style="color:#ff7e7e;">.</span>

<span style="color:#ff7e7e;">Delegeringsteknikken er mer fleksibel enn arv, fordi en når som helst kan bytte ut TimeEstimator-objektet og dermed også endre oppførselen til estimateTime-metoden. Arv-mekanismen frigjøres dessuten til andre mer "verdige” formål.</span>

<span style="color:#ff7e7e;">Poenget her er å gjøre som beskrevet i oppgaven, å bruke </span>**rel2**<span style="color:#ff7e7e;"> på resultatet av å bruke </span>**rel1**<span style="color:#ff7e7e;">. Her sjekkes det ikke for duplikater (som det sjelden er behov for med relasjoner av denne typen). Dette er </span>*delegeringsteknikken*<span style="color:#ff7e7e;"> i praksis, som kjennetegnes ved at et </span>*delegerende*<span style="color:#ff7e7e;"> objekt, som skal utføre en oppgave, ber en eller flere </span>*delegater*<span style="color:#ff7e7e;"> om å utføre (omtrent) samme oppgave, for så å kombinere resultatene. Her delegeres det til </span>**rel1**<span style="color:#ff7e7e;"> og </span>**rel2**<span style="color:#ff7e7e;">, som implementerer samme grensesnitt som </span>**Relation2**<span style="color:#ff7e7e;">.</span>

# Observatør-observert-teknikken - Teorispørsmål

1. På hvilken måte kan observatør-observert-teknikken hjelpe til å holde tilstanden i et program konsistent?<span style="color:#ff7e7e;">Observatør-observert-teknikken brukes når en eller flere objekter, her kalt observatører, må holdes konsistent med et annet objekt, her kalt observert, og det observerte objektet sin implementasjon ikke skal være for tett knyttet til observatørenes. Teknikken er basert på at det observerte objektet sier fra til en eller flere observatører om at tilstanden er endret, slik at observatørene kan oppdatere sin tilstand ift. deres regler for konsistens.</span>

2. Nevn (minst) tre metoder som burde være med i de aller fleste implementasjoner av observatør-observert-teknikken.

3. Hvorfor kan det være lurt å benytte grensesnitt for den observerte parten i et observatør-observert-forhold?

4. Hvorfor kan det være lurt å benytte grensesnitt for observatør-parten i et observatør-observert-forhold?

5. Tenk at en nettside oppdateres jevnlig, og du ønsker å få et varsel til mobilen din hver gang nettsiden oppdateres. Hvilken av partene er den observerte og og hvilken er observatør?

6. Hvorfor lønner det seg å bruke observatør-observert-teknikken fremfor å jevnlig sjekke om et objekt har endret tilstand?

<span style="color:#ff7e7e;">Dette er standard bruk av observatør-observert-teknikken, altså må en ha felt med liste av lyttere, metoder for å legge til og fjerne lyttere og helst en hjelpemetode for å varsle dem.</span>

<span style="color:#ff7e7e;">Observatør-observert-teknikken, lytte til endringer. Lytting med 1) et grensesnitt, 2) liste av lyttere, 3) add/remove-metoder for lyttere, 4) metode til lytterne og 5) kall av metode når endring skjer.</span>

<span style="color:#ff7e7e;">Observerbarhet krever:	1. at en holder styr på lytterne og	2. at alle endringsmetoder kaller lytternes lyttermetode.</span>

<span style="color:#ff7e7e;">Observert-observatør-teknikken brukes til å følge med på hvordan tilstanden til objekter endres over tid, typisk for å sikre konsistens med andre objekter, f.eks. et GUI med "indre" objekter. Et objekt er observerbart dersom en kan lese ut alle relevant tilstand og en kan få beskjed (lytte på hendelser) om når og hvordan denne tilstanden endres.	Det siste spørsmålet er et lurespørsmål: Dice er allerede observerbar! Siden tilstanden ikke kan endres, så trenger en ikke å støtte lyttere. Hvis tilstanden kunne endres, så måtte man 1) definert et lyttergrensesnitt, 2) hatt metoder for å administrere (registrere og avregistrere) lyttere, 3) hatt metode(r) for å sende ut varsler om tilstandsendringer og 4) kalt disse metodene i alle metoder som faktisk endrer tilstanden.</span>

<span style="color:#ff7e7e;">Den generelle teknikken er </span>*observatør-observert*<span style="color:#ff7e7e;">, som både brukes for å si fra om at tiden går og om at </span>**Trip**<span style="color:#ff7e7e;"> er endret. Tiden håndteres ved å anta at det finnes en </span>**Clock**<span style="color:#ff7e7e;">-klasse, som kan si fra hvert minutt til et sett med lyttere. En kan f.eks. ha grensesnittet </span>**ClockListener**<span style="color:#ff7e7e;"> med </span>**minuttPassed()**<span style="color:#ff7e7e;">-metoden og metodene </span>**addClockListener**<span style="color:#ff7e7e;"> og </span>**removeClockListener**<span style="color:#ff7e7e;">. </span>**Trip**<span style="color:#ff7e7e;"> må gjøres </span>*observerbar*<span style="color:#ff7e7e;">: 1) en må ha lese-metoder for alle relevante data og 2) en må kunne registrere lyttere (som implementerer et lyttergrensesnitt f.eks. kalt </span>**TripChangedListener**<span style="color:#ff7e7e;">) som får beskjed når objektet endres (f.eks. vha. en metode kalt </span>**tripChanged**<span style="color:#ff7e7e;">).</span>

<span style="color:#ff7e7e;">Hva innebærer observerbarhet? Hvordan en gjør en (egenskap i en) klasse observerbar?- Observerbarhet handler om å la et eller flere objekter (observatørene/lytterne) få beskjed om endringer i et annet objekt (den observerte). Observert-klassen må administrere et sett med lyttere (objekter som implementerer et lyttergrensesnitt), vha. felt for Collection av lyttere og add/remove-metoder. Alle steder hvor tilstanden (til egenskapen) endres, må det skytes inn kode som sier fra til lytterne (kall på fire-metode, som går gjennom lytterne).- Capacity-egenskapen beregnes på bakgrunn av </span>**tables**<span style="color:#ff7e7e;">- og </span>**seatings**<span style="color:#ff7e7e;">-listene, og derfor må lytterne varsles hver gang disse endres (av </span>**addTable**<span style="color:#ff7e7e;">, </span>**removeTable**<span style="color:#ff7e7e;">, </span>**addSeating**<span style="color:#ff7e7e;"> og </span>**removeSeating**<span style="color:#ff7e7e;">). Det skilles ikke mellom om kapasiteten øker eller minker, selv om det er økning som </span>**GuestManager**<span style="color:#ff7e7e;"> er interessert i. Lyttere registreres med </span>**add**<span style="color:#ff7e7e;">/</span>**removeCapacityListener**<span style="color:#ff7e7e;">-metoder og en </span>**fireCapacityChanged**<span style="color:#ff7e7e;">-metode, som varsler lytterne (CapacityListener-implementasjoner), kalles av endringsmetodene.</span>

<span style="color:#ff7e7e;">Standardteknikken krever et passende lyttergrensesnitt og en liste av lyttere som kalles på passende sted. En bruker gjerne en Collection for å lagre lytterne og add/remove-metoder for å administrere lytterne.- LF definerer lyttergrensesnittet </span>**TreatmentListener**<span style="color:#ff7e7e;">. Dette grensesnittet har én metode, som kalles idet doktor-pasient-koblingen etableres, altså på tidspunktet det passer å gi beskjed til pasienten om hvilken doktor hen skal gå til. Metoden bør ta inn faktisk pasient, doktor og akuttmottak (</span>**TreatmentUnit**<span style="color:#ff7e7e;">).- Endringer som må gjøres i </span>*den*<span style="color:#ff7e7e;"> </span>*observerte*<span style="color:#ff7e7e;">, </span>**TreatmentUnit**<span style="color:#ff7e7e;">, er at alle lytterne lagres i en </span>**private**<span style="color:#ff7e7e;"> </span>**Collection**<span style="color:#ff7e7e;"> av type </span>**TreatmentListener**<span style="color:#ff7e7e;">, og at den legger inn relevante </span>**public add/remove**<span style="color:#ff7e7e;"> til denne. I tillegg defineres hjelpemetoden </span>**fireTreatmentStarted**<span style="color:#ff7e7e;">, som kalles rett etter at </span>**setPatient**<span style="color:#ff7e7e;"> har etablert en ny doktor-pasient-kobling (i både </span>**startTreatment(Doctor)**<span style="color:#ff7e7e;"> og </span>**startTreatment(Patient)**<span style="color:#ff7e7e;">).</span>

# Typer - Teorispørsmål

1. **Collection<String> strings = new ArrayList<String>()**a) Hva er sammenhengen med typen deklarert på venstre-side og typen deklarert på høyre-side?<span style="color:#ff7e7e;">Hvordan påvirker </span>**String**<span style="color:#ff7e7e;">-spesialiseringen (altså det som står mellom </span>**< >**<span style="color:#ff7e7e;">) bruken av </span>**strings**<span style="color:#ff7e7e;">-variabelen?- Typen på høyresiden må være den samme eller en subklasse (inkl. implementasjonsklasse, som her) av typen på venstresiden. Spesialiseringen må være den samme. </span>**String**<span style="color:#ff7e7e;">-spesialiseringen påvirker parametertyper og returtyper for </span>**Collection**<span style="color:#ff7e7e;">- og </span>**ArrayList**<span style="color:#ff7e7e;">-metodene. F.eks. vil </span>**get**<span style="color:#ff7e7e;"> returnere </span>**String**<span style="color:#ff7e7e;"> og </span>**add**<span style="color:#ff7e7e;"> og </span>**set**<span style="color:#ff7e7e;">-metodene vil ta en </span>**String**<span style="color:#ff7e7e;"> som parameter.</span>b) Hvordan påvirker det videre programmering at det står <String>? 

2.  Hva er casting? 

3. a) Hva er forskjellen på int og Integer?b) Gi et eksempel på når en må bruke Integer. 

4. Hva er typen til følgende uttrykk? a) "Java" + "Gøy";  // String + String = Stringb) 1/2;  // int / int = intc) ("J"+"ava").charAt(2);  // char

5. Public Eksamen(String besvarelser...){} Hvor mange String-objekter kan sendes inn i denne konstruktøren?  

<span style="color:#ff7e7e;">Man må </span><span style="color:#ff7e7e;">deklarere </span>*typen*<span style="color:#ff7e7e;"> til alle felt, variabler og parametre (i motsetning f.eks. Python, Javascript og Matlab). De viktigste fordelene er at </span><span style="color:#ff7e7e;">det </span><span style="color:#ff7e7e;">blir lettere å:</span>

1. <span style="color:#ff7e7e;">oppdage/hindre feil bruk av verdier (for verktøy, kompilator og programmerer)</span>

2. <span style="color:#ff7e7e;">tilby hjelp til kodingen, f.eks. foreslå metoder</span>

3. <span style="color:#ff7e7e;">kompilere til effektiv kode</span><span style="color:#ff7e7e;"> </span>

<span style="color:#ff7e7e;">At metoder i en klasse kan ha samme navn kalles "overloading”. For å avgjøre hvilken som skal kalles, brukes de deklarerte typene til argumentene (ikke returverdien). Merk at dette er noe annet enn polymorfi, som handler om at subklasser kan ha ulike implementasjoner av metoder definert i en felles superklasse.</span><span style="color:#ff7e7e;">Hensikten med å definere en </span>**toString()**<span style="color:#ff7e7e;">-metode er at </span>**toString()**<span style="color:#ff7e7e;">-metoden brukes implisitt når Java lager String-objekter av instanser ifm. bruk av </span>**+**<span style="color:#ff7e7e;"> og IO og sikrer at tilstanden til instanser blir presentert på en nyttig måte.</span>

<span style="color:#ff7e7e;">Hvordan er klassen kodet så det forklarende ordet/navnet vises ved utskrift, f.eks. med </span>**System.out.println(...)**<span style="color:#ff7e7e;">? Ved utskrift så brukes implisitt </span>**toString()**<span style="color:#ff7e7e;">-metoden, som er implementert og returnerer </span>**label**<span style="color:#ff7e7e;">.</span>

<span style="color:#ff7e7e;">Et funksjonelt grensesnitt har bare én abstrakt metode, og resultatet av å utføre metoden skal alltid være det samme for samme argumenter. Dette gjør at man kan tenke på implementasjonen som en matematisk funksjon. Det er også et poeng (men underordnet) at grensensittet er ment å være den </span>*primære*<span style="color:#ff7e7e;"> funksjonen til klassen som implementerer den. Ellers gir det ikke så mye mening å bruke anonyme klasser/lambda-uttrykk til å implementere grensesnittet. Et eksempel på dette er </span>**Comparator**<span style="color:#ff7e7e;">, som kun implementeres for å sammenligne argumentene. </span>**Comparable**<span style="color:#ff7e7e;">-derimot, implementeres av dataklasser og er derfor en sekundær funksjon, som det ikke er noe poeng å implementere som primærfunksjon.</span>

**DiceScorer**<span style="color:#ff7e7e;">-grensesnittet er funksjonelt fordi det 1) har kun én abstrakt metode og 2) er ment å være primærtfunksjonen til klassen som implementerer den.</span>

<span style="color:#ff7e7e;">Funksjonelle grensesnitt har bare én metode (krav 1), og den metoden er </span>*funksjonell*<span style="color:#ff7e7e;"> fordi den for samme input(-parametre) alltid gir samme output(-verdi). En annen måte å si det siste på er at den ikke har intern tilstand som påvirker oppførselen og som kan endres. Det er også vanlig å tenke på grensesnitt-metoden som klassens </span>*hovedfunksjon*<span style="color:#ff7e7e;">.</span>

**CapacityListener**<span style="color:#ff7e7e;">-grensesnitt er (teknisk sett) funksjonelt, siden det bare har én (abstrakt) metode (og kan derfor implementeres med lambda-syntaksen). Dette kreves i et svar som får poeng i det hele tatt. I tillegg bør andre argumenter (for at grensesnittet ikke er funksjonelt) trekkes inn, f.eks. at metoden typisk ikke er implementasjonens primære funksjon og at en ikke tenker på den som en matematisk funksjon som kun er avhengig av argumentene.</span>

<span style="color:#ff7e7e;">Hjelpemetode </span>**tokenize**<span style="color:#ff7e7e;">, som kan være nyttig ved innlesing og som kan antas ferdig implementert. Modifikatorer?En slik hjelpemetode bør for det første være markert som </span>**private**<span style="color:#ff7e7e;">, siden det ikke er naturlig at dette er en tjeneste som tilbys andre klasser. For det andre bør den være markert som </span>**static**<span style="color:#ff7e7e;">, siden den ikke bruker (leser eller endrer) tilstanden til noe </span>**Family**<span style="color:#ff7e7e;">-objekt. Eneste grunn til at den ikke skal være </span>**static**<span style="color:#ff7e7e;">, er hvis en subklasse av </span>**Family**<span style="color:#ff7e7e;"> har behov for å redefinere den, og det er ikke aktuelt her.</span>

<span style="color:#ff7e7e;">Her er poenget at en trenger en </span>*global*<span style="color:#ff7e7e;"> teller, som en får til i Java ved bruk av </span>**static**<span style="color:#ff7e7e;">. Denne må brukes og økes i </span>**Table**<span style="color:#ff7e7e;"> sin konstruktør.</span>

# Testing - Teorispørsmål

1. Hvilke tre "faser" går man gjennom under kjøring av en JUnit-test?

    1. Hva må de ulike metodene i hver "fase" hete?

2. Hvor mange test- metoder kan en JUnit-test inneholde?

3. Hva er meningen med testing av programmer på enhetsnivå (Slik JUnit gjør)?

<span style="color:#ff7e7e;">Den </span>*generelle*<span style="color:#ff7e7e;"> testeteknikken som JUnit-testing (og JExercise) baserer seg på er å rigge opp objekter med en før-tilstand, endre tilstanden og sammenligne med forventet etter-tilstand. Noen ganger er det ingen før- og etter-tilstand, da en kun sjekker et selvstendig metodekall, dvs. sammenligner returverdi med fasiten.- bruk av </span>**assertTrue**<span style="color:#ff7e7e;"> og </span>**==**<span style="color:#ff7e7e;"> og </span>**ikke assertEquals **<span style="color:#ff7e7e;">for å sjekke for identisk likhet.</span>

<span style="color:#ff7e7e;">For å teste iterasjon med foreach-løkker, må vi bruke metoden som en slik løkke (implisitt) bruker, nemlig </span>**iterator()**<span style="color:#ff7e7e;">-metoden og </span>**Iterator**<span style="color:#ff7e7e;">-objektet som denne returnerer. Her brukes objektene som er rigget opp i </span>**setUp**<span style="color:#ff7e7e;">-metoden.</span>

<span style="color:#ff7e7e;">hvorfor det er mer komplisert å teste </span>**rentBike**<span style="color:#ff7e7e;"> og </span>**returnBike**<span style="color:#ff7e7e;"> enn å teste </span>**getRentedBikes**<span style="color:#ff7e7e;">. Hvilke aspekter ved disse metodene er det som gjør det mer komplisert?- </span>**getRentedBikes**<span style="color:#ff7e7e;"> kan testes ved å sjekke bare returverdier, etter å ha rigget opp diverse objekter, siden metoden ikke har </span>*side-effekter*<span style="color:#ff7e7e;">. Effekten av </span>**rentBike**<span style="color:#ff7e7e;"> og </span>**returnBike**<span style="color:#ff7e7e;"> er derimot endring av diverse datastrukturer, så disse må sjekkes etterpå.</span>

# Unntak/Exception

<span style="color:#ff7e7e;">I metoder som endrer (en verdi i) et objekt, så bør argumenter valideres. Dette må skje før selve endringen og i tilfelle ugyldig(e) verdier så kastes et unntak av typen </span>**IllegalArgumentException(…)**<span style="color:#ff7e7e;">.</span>

<span style="color:#ff7e7e;">En såkalt </span>*checked exception*<span style="color:#ff7e7e;"> er en subklasse av Exception som ikke samtidig er en subklasse av RuntimeException. En slik Exception må deklareres vha. </span>**throws**<span style="color:#ff7e7e;"> og den kallende metoden må enten håndtere unntaket med </span>**try**<span style="color:#ff7e7e;">/</span>**catch**<span style="color:#ff7e7e;"> eller deklarere det med </span>**throw**<span style="color:#ff7e7e;">s.</span>

<span style="color:#ff7e7e;">Checked exception : en </span>**Exception**<span style="color:#ff7e7e;"> som ikke er en </span>**RuntimeException**<span style="color:#ff7e7e;"> er en </span>*checked*<span style="color:#ff7e7e;"> exception. En slik unntakstype krever enten try/catch eller en </span>**throws**<span style="color:#ff7e7e;">-deklarasjon for å unngå kompileringsfeil.</span>

<span style="color:#ff7e7e;">Metoder som sjekker argumentene sine før de utfører evt. endringer på objektet kalles </span>*validering*<span style="color:#ff7e7e;"> (og er en viktig del av innkapsling). Det er lurt å skille ut valideringen i en egen metode som kalles fra endringsmetodene. Metoden kan være </span>**protected**<span style="color:#ff7e7e;">, så subklasser kan redefinere og gjenbruke valideringslogikken. Det er vanligst å bruke en såkalt </span>*unchecked exception*<span style="color:#ff7e7e;"> (usjekket unntak), som </span>**IllegalArgumentException**<span style="color:#ff7e7e;">.</span>

**throws**<span style="color:#ff7e7e;">-deklarasjonen forteller leseren av koden at konstruktørene kan utløse unntak. Siden unntakene er en subklasse av </span>**RuntimeException**<span style="color:#ff7e7e;"> og dermed ikke </span>*checked*<span style="color:#ff7e7e;">, så er det ikke nødvendige.</span>

# Ulike grensesnitt typer

Standard funksjonelle grensesnitt, inkl. **Predicate<T>**, **Consumer<T>**, **Supplier<T>**, **Function<T, R>**, **BiFunction<T1, T2, R>**, **BinaryOperator<T>** og **UnaryOperator<T>**

<span style="color:#ff7e7e;">Grensesnitt som </span>**Predicate**<span style="color:#ff7e7e;"> er et såkalt </span>*funksjonelt*<span style="color:#ff7e7e;"> grensesnitt, siden det har én metode som (er ment som å) oppfører seg som en matematisk funksjon.</span>

<span style="color:#ff7e7e;">Metoden deklareres som </span>**Collection<Person> getMatchingPersons(Collection<Person> persons, Predicate<Person> test)**<span style="color:#ff7e7e;">. Koden kan skrives på (minst) to måter, enten som en én-linjer med </span>**Stream**<span style="color:#ff7e7e;">-teknikken eller med en løkke som tester og legger til en resultat-liste. Kallet gjøres enklest med lambda-notasjonen:</span>**getMatchingPersons(persons, p -> p.getGender() == ’M’ && p.getAge() == 18)**

Collection-rammeverket** (Collection<T>-, List<T>-, Set<T>, Map<K, V>-, Iterator<T>- og Iterable<T>-**grensesnittene og** ArrayList<T>- og HashMap<K, V>-klassene)**, inkludert bruk av **<> **i deklarasjoner, såkalte generics<span style="color:#ff7e7e;">Hvis en klasse implementerer </span>**Iterable**<span style="color:#ff7e7e;"> så kan en bruke en instans av klassen på høyresiden av :-tegnet i en for-each-løkka, og iterere over alle verdier "inni" objektet. Her betyr det at vi kan skrive ... </span>**for (double v : values) { ... }**

<span style="color:#ff7e7e;">Typen bør være et grensesnitt fra </span>**Collection**<span style="color:#ff7e7e;">-rammeverket, enten </span>**Collection**<span style="color:#ff7e7e;"> eller </span>**List**<span style="color:#ff7e7e;">, som er spesialisert til element-typen </span>**Course**<span style="color:#ff7e7e;">. Her brukes </span>**Collection**<span style="color:#ff7e7e;">, fordi en ikke trenger andre metoder enn den deklarerer.</span>

<span style="color:#ff7e7e;">Her er poenget å velge en type som passer til hvordan feltet brukes og verdien den blir tilordnet. Verdien som tilordnes er av typen </span>**List<Course>**<span style="color:#ff7e7e;">, så typen må enten være </span>**List**<span style="color:#ff7e7e;"> eller en av dens superklasser, som er </span>**Collection**<span style="color:#ff7e7e;"> og </span>**Iterable**<span style="color:#ff7e7e;">. Hvis vi bare trenger metodene i </span>**Collection**<span style="color:#ff7e7e;">, som </span>**List**<span style="color:#ff7e7e;"> arver fra, så er det bedre å bruke </span>**Collection**<span style="color:#ff7e7e;"> i deklarasjonen.</span>

<span style="color:#ff7e7e;">For å kunne iterere med et </span>**Meal**<span style="color:#ff7e7e;">-objekt bak kolonet i en </span>**for**<span style="color:#ff7e7e;">-løkke, så må </span>**Meal**<span style="color:#ff7e7e;">-klassen implementere </span>**Iterable<Course>**<span style="color:#ff7e7e;"> og derfor ha en </span>**iterator()**<span style="color:#ff7e7e;">-metode som returnerer </span>**Iterator<Course>**<span style="color:#ff7e7e;">.</span>

<span style="color:#ff7e7e;">Her er poenget å skjønne hvordan tabeller virker (opprettes, leses fra og skrives til) og logikken bak </span>**valueCounters**<span style="color:#ff7e7e;">-feltet, samt hvordan iterere med </span>**Iterator**<span style="color:#ff7e7e;"> (</span>**hasNext()**<span style="color:#ff7e7e;"> og </span>**next()**<span style="color:#ff7e7e;">) og </span>**Iterable**<span style="color:#ff7e7e;"> (</span>**iterator()**<span style="color:#ff7e7e;">).</span>

<span style="color:#ff7e7e;">En kan lage en egen klasse som kombinerer mobilnummer og antall minutter i forkant de skal få varsel, eller bruke en </span>**Map<String, Integer>**<span style="color:#ff7e7e;">.</span>

<span style="color:#ff7e7e;">Hvis en klasse implementerer </span>**Iterable**<span style="color:#ff7e7e;">, så kan referanser til denne klassen brukes på høyresiden av kolonet i en for-each-løkke, f.eks. for (Person child : person). Se også </span>**getChildren**<span style="color:#ff7e7e;">-koden over.Et (litt mindre relevant, og ikke påkrevd) alternativ er </span>**Iterable.forEach(Consumer<Person>)**<span style="color:#ff7e7e;">. Dette er en såkalt </span>**default**<span style="color:#ff7e7e;">-metode (kom ikke frem i vedlegget) som en får gratis når en implementerer </span>**Iterable**<span style="color:#ff7e7e;">.</span>

<span style="color:#ff7e7e;">Forklar med tekst og kode sammenhengen mellom for-each-syntaksen, altså den på formen for (<type> <var> : <uttrykk>) ..., og </span>**Iterable**<span style="color:#ff7e7e;">- og </span>**Iterator**<span style="color:#ff7e7e;">-grensesnittene.- Den vanlige måten å gå gjennom en liste med elementer er med kode som den under til venstre. Dette kalles en </span>**for-each**<span style="color:#ff7e7e;">-løkke, fordi den går gjennom hvert element i lista. Dette er egentlig spesial-syntaks for iterator-basert iterasjon, det er bare det at du aldri ser iteratoren. Funksjonelt sett er </span>**for-each**<span style="color:#ff7e7e;">-løkka til venstre ekvivalent med den </span>**Iterator**<span style="color:#ff7e7e;">-baserte løkka under til høyre. Det er egentlig en smaksak hvilken en bruker, men den venstre varianten er å foretrekke fordi den både er enklere å skrive og lese.- Hvis en tenker over det, så er det nettopp </span>**iterator()**<span style="color:#ff7e7e;">-metoden, som er nøkkelen til at </span>**for-each**<span style="color:#ff7e7e;">-løkka virker. Det holder at </span>**stringListe**<span style="color:#ff7e7e;"> i kode-eksemplet har en slik metode, for at den skal kunne "omskrives" til koden til høyre som den tilsvarer. Denne koblingen mellom </span>**for-each**<span style="color:#ff7e7e;">-løkka og </span>**iterator()**<span style="color:#ff7e7e;">-metoden er ikke tilfeldig, og for å gjøre koblingen eksplisitt og mulig å utnytte for klasser utenfor Collection-rammeverket, så er </span>**iterator()**<span style="color:#ff7e7e;">-metoden definert i et eget grensesnitt ved navn </span>**Iterable**<span style="color:#ff7e7e;"> (i </span>**java.lang**<span style="color:#ff7e7e;">-pakken, så en slipper egen import-setning). Det er altså fordi en </span>**ArrayList**<span style="color:#ff7e7e;"> implementerer </span>**Iterable**<span style="color:#ff7e7e;"> at en </span>**for-each**<span style="color:#ff7e7e;">-løkke med en </span>**ArrayList**<span style="color:#ff7e7e;"> virker! Og </span>**ArrayList**<span style="color:#ff7e7e;"> implementerer </span>**Iterable**<span style="color:#ff7e7e;"> fordi den implementerer </span>**List**<span style="color:#ff7e7e;">, og </span>**List**<span style="color:#ff7e7e;"> utvider </span>**Collection**<span style="color:#ff7e7e;"> som utvider </span>**Iterable**<span style="color:#ff7e7e;">. Denne koblingen mellom </span>**ArrayList**<span style="color:#ff7e7e;"> og </span>**Iterable**<span style="color:#ff7e7e;"> er illustrert under med et klassediagram:</span>

sortering med** Comparable<T> **og** Comparator<T>**

<span style="color:#ff7e7e;">Ved å implementere </span>**Comparable**<span style="color:#ff7e7e;">-grensesnittet så kan </span>**Value**<span style="color:#ff7e7e;">-objekter sorteres vha. Java sine innebygde sort-metoder.</span>

<span style="color:#ff7e7e;">Dersom </span>**Course**<span style="color:#ff7e7e;">-klassen implementerer </span>**Comparable**<span style="color:#ff7e7e;">, dvs. sammenligning med et annet </span>**Course**<span style="color:#ff7e7e;">-objekt, så kan </span>**Collections.sort**<span style="color:#ff7e7e;">- og </span>**List.sort**<span style="color:#ff7e7e;">-metodene brukes til sortering av </span>**Course**<span style="color:#ff7e7e;">-objekter.</span>

**Exam**<span style="color:#ff7e7e;">-objekter skal også kunne sorteres, men på </span>**to måter**<span style="color:#ff7e7e;">! Hvordan begge sorteringene kan støttes og skriv nødvendig kode : I tillegg til </span>**Comparable**<span style="color:#ff7e7e;">, som bygger sorteringsrekkefølgen inn i klassen selv, så kan en implementere en </span>**Comparator<Exam>**<span style="color:#ff7e7e;">, som er en annen klasse som sammenligne to </span>**Exam**<span style="color:#ff7e7e;">-objekter:</span>

**Table**<span style="color:#ff7e7e;"> må implementere </span>**Comparable<Table>**<span style="color:#ff7e7e;"> for at </span>**sort**<span style="color:#ff7e7e;">-metoden skal kunne brukes og virke. Alternativt kan man lage en (implementasjon av) </span>**Comparator<Table>**<span style="color:#ff7e7e;">, f.eks. med </span>**(t1,t2) -> t1.getCapacity() – t2.other.getCapacity()**<span style="color:#ff7e7e;">.</span>

IO med byte- og tegnstrømmer **(InputStream/OutputStream **og** Reader/Writer **med subklasser) og filer

* **InputStream**<span style="color:#ff7e7e;">-/</span>**OutputStream**<span style="color:#ff7e7e;">-klassene håndterer </span>**byte**<span style="color:#ff7e7e;">-verdier, mens </span>**Reader**<span style="color:#ff7e7e;">-/</span>**Writer**<span style="color:#ff7e7e;">-klassene håndterer char-verdier (dvs. implementerer koding av tegn til/fra bytes iht. Unicode-regler).</span>

* <span style="color:#ff7e7e;">Input/output-metoder kaster ofte </span>**IOException**<span style="color:#ff7e7e;">, som er en såkalt "checked exception". Slike brukes gjerne for feil som er utenfor vår kontroll. Disse krever at kode må fange dem opp med </span>**try/catch**<span style="color:#ff7e7e;"> eller deklarere med </span>**throws**<span style="color:#ff7e7e;"> at de kastes videre.</span>

* <span style="color:#ff7e7e;">Strømmer bruker gjerne ressurser utenfor Java og </span>**close()**<span style="color:#ff7e7e;">-metoden sikrer at Java samhandler riktig med disse, f.eks. frigjør dem. For å sikre at dette alltid skjer, er det vanlig å ha </span>**close()**<span style="color:#ff7e7e;">-kallet i en </span>**try/finally**<span style="color:#ff7e7e;">-blokk.</span>

# Streams

<span style="color:#ff7e7e;">return allBikes.stream().filter(bike -> bike.getRenter() == null && bike.getLocation().distance(location) <= distance).count();</span>

<span style="color:#ff7e7e;">return allBikes.stream().filter(bike -> bike.getRenter() != null).collect(Collectors.toList());</span>

<span style="color:#ff7e7e;">getRentedBikes().stream().filter(bike -> getStationNearby(bike, 30.0) != null).collect(Collectors.toList());</span>

<span style="color:#ff7e7e;">diceCol.stream().map(Dice::getScore).reduce(0, (n1, n2) -> n1 + n2)</span>

<span style="color:#ff7e7e;">diceCol.stream().mapToInt(Dice::getScore).sum()</span>

# Input/Output (IO)

<span style="color:#ff7e7e;">Det viktigste med </span>**save**<span style="color:#ff7e7e;">-metoden er at den først skriver ut alle linjer av type 1, altså den person-informasjonen som er nødvendig for å </span>**lage**<span style="color:#ff7e7e;"> Person-objektene før foreldre-barn-koblingen etableres. Vi velger å lage en </span>**PrintWriter**<span style="color:#ff7e7e;"> rundt </span>**OutputStream**<span style="color:#ff7e7e;">-en vi får inn, for å muliggjøre bruke av </span>**print**<span style="color:#ff7e7e;"> og </span>**println**<span style="color:#ff7e7e;">. Vi kunne brukt en </span>**PrintStream**<span style="color:#ff7e7e;">, men en </span>**Writer**<span style="color:#ff7e7e;"> anbefales jo for tekst (trekker ikke for bruk av </span>**PrintStream**<span style="color:#ff7e7e;">). Så skrives alle linjene av type 2 ut. Derfor blir det to iterasjoner over alle medlemmene. Navn får anførselstegn (") rundt (merk måten ” inkluderes i en String). Her sjekkes det om en person har barn (kan gjøre på mange måter), så det ikke blir linjer med en forelder, men det er strengt tatt ikke definert som et krav (det står ”sequence of names”, og en sekvens kan jo ha bare ett element). Hvis en har linjer med bare én forelder, så er det viktig at load-metoden håndterer det riktig. Det er vanlig at den som setter opp en </span>**OutputStream**<span style="color:#ff7e7e;"> også lukker den, og derfor avslutter vi </span>*ikke*<span style="color:#ff7e7e;"> med </span>**pw.close()**<span style="color:#ff7e7e;">. Vi avslutter imidlertid med </span>**pw.flush()**<span style="color:#ff7e7e;"> for å sikre at all vår output sendes ut med en gang (trekker ikke for manglende bruk av </span>**close()**<span style="color:#ff7e7e;">/</span>**flush()**<span style="color:#ff7e7e;">).</span>

**load**<span style="color:#ff7e7e;">-metoden klassifiserer hver linje som en av de tre typene ved å først sjekke om den er tom eller starter med # (type 3) og så sjekker om første token i en linje er en gyldig </span>**Gender**<span style="color:#ff7e7e;"> (type 1). Ellers er den av type 2. Her gjøres det ingen sjekk på om formatet er korrekt, f.eks. om et barn i en linje av type 2 faktisk er registrert som familiemedlem. Det er kanskje litt uklart hvorvidt og evt. hvordan </span>**tokenize**<span style="color:#ff7e7e;"> håndterer </span>**#**<span style="color:#ff7e7e;">, så det er greit at den brukes før en sjekker for linjer av type 3.</span>

<span style="color:#ff7e7e;">Unntak håndteres ikke av metodene, så de må deklareres med </span>**throws**<span style="color:#ff7e7e;">. Det er naturlig å bruke </span>**IOException**<span style="color:#ff7e7e;">, for den utløses ved bruk av </span>**InputStream**<span style="color:#ff7e7e;"> og </span>**OutputStream**<span style="color:#ff7e7e;">. En kunne brukt </span>**Exception**<span style="color:#ff7e7e;"> or å markere (at vi er klar over) at det er mye som kan gå galt, men det anbefales å bruke den mest spesifikke typen. Vi kunne fanget opp og ignorert unntak, men det kan lett maskere feil vi ønsker å avdekke.</span>

**public void save(OutputStream out) throws IOException {**

**PrintWriter pw = new PrintWriter(out);**

**...**

**pw.flush()**

**}public void load(InputStream in) throws IOException {**

**Scanner scanner = new Scanner(in);**

**…**

**scanner.close();**

**}**

# FXML

<span style="color:#ff7e7e;">Av FXML-koden kan en lese at det grafiske grensesnittet (appen) knyttes til </span>**BikeRental**<span style="color:#ff7e7e;"> ved hjelp av klassen </span>**BikeRentalController**<span style="color:#ff7e7e;">. Dette er i tråd med navnekonvensjonene brukt i tidligere eksamener. Det refereres til to tekstfelt som en i koden kobler seg til med henholdsvis  @FXML private TextField </span>**fromInput**<span style="color:#ff7e7e;"> og </span>**toInput**<span style="color:#ff7e7e;">. Likeledes må en lage tre metoder (@FXML private void </span>**plus1HourAction**<span style="color:#ff7e7e;">, </span>**minus1HourAction**<span style="color:#ff7e7e;"> og </span>**rentAction**<span style="color:#ff7e7e;">) som kalles når knappene i grensesnittet trykkes inn.</span>

<span style="color:#ff7e7e;">Her er vi mest opptatt av:	- @FXML-annotasjonene	- riktig type og navn for variablene og metoden	- at en henter input fra </span>**dieCountInput**<span style="color:#ff7e7e;"> og setter output med </span>**diceOutput**

# Diagrammer

Grovt sett beskriver diagrammer to ulike aspekter ved et program:

* Tilstand/oppførsel ved kjøretid, altså hva som skjer når programmet kjøres, f.eks. tilstanden til objektstrukturer. Eksempler er **[Objektdiagramme**r](https://www.ntnu.no/wiki/display/tdt4100/Objektdiagrammer), **[Objekttilstandsdiagramme**r](https://www.ntnu.no/wiki/display/tdt4100/Objekttilstandsdiagrammer) og **[Sekvensdiagramme**r](https://www.ntnu.no/wiki/display/tdt4100/Sekvensdiagrammer).

* Design, altså hvordan programkoden er strukturert, f.eks. hvilke klasser som finnes og hvordan de henger sammen. **[Klassediagramme**r](https://www.ntnu.no/wiki/display/tdt4100/Klassediagrammer) er et eksempel.

PLANTUML

* Hide circle : hides class/interface/abstract icon

<span style="color:#ff7e7e;">De ulike diagramdelene, altså boksene, strekene/pilene og tegnene (ord, tall og *):Diagrammet er omtrent som et klassediagram, så boksene tilsvarer klasser. Navnet øverst en boks er klassenavnet, mens de andre er egenskaper, dvs. data, som instansene vil ha. Strekene er assosiasjoner (eller relasjoner), som sier noe om hvordan instanser kan kobles sammen. Tallene på enden av strekene angir hvor mange koblinger en instans kan ha (* betyr ubegrenset), såkalt </span>*multiplisitet*<span style="color:#ff7e7e;">. Pilene sier noe om i hvilken retning en kan følge en kobling, ingen betyr begge retninger, mens én pil betyr bare i den retningen.Egenskapene og assosiasjonene blir typisk til felt med type som passer til multiplisiteten. En må velge hvordan dataene skal </span>*kapsles inn*<span style="color:#ff7e7e;">, altså konstruktører med parametre, gettere og settere, og evt. add- og remove-metoder og andre metoder.</span>

**O****bjektdiagrammer (objekter med tilstand og koblinger)**

er en diagramtype som viser tilstanden til et program, ved å illustrere "snapshots" av objektstrukturer. 

Hva er forskjellen (hensikt og innhold) mellom *objektdiagrammer *og *objekttilstandsdiagrammer*?

<span style="color:#ff7e7e;">Et </span>*objektdiagram*<span style="color:#ff7e7e;"> viser oppbygning av og koblinger mellom objekter/instanser, og brukes for å illustrere tilstanden til (eller en mulig tilstand til) et program. Et </span>*objekttilstandsdiagram*<span style="color:#ff7e7e;"> viser hvordan slike strukturer endres over tid, ved kall av metoder (typisk endringsmetoder), og brukes til å illustrere (mulig) objektoppførsel og utviklingen av tilstanden til et program.</span>

**O****bjekttilstandsdiagrammer**

Hvis en tenker på objektdiagrammer som tilstander og kobler dem sammen med transisjoner, så får en objekttilstandsdiagram, som viser hvordan objektstrukturer utvikler seg over tid.

<span style="color:#ff7e7e;">Objekttilstandsdiagrammer brukes til å beskrive oppførselen til et objekt. Viktig fordel og ulempe/begrensning.</span>

* **Fordeler**<span style="color:#ff7e7e;">: Eksempel på forløp kan være enklere å forstå enn en komplett definisjon i form av regler (invarianter). Diagrammer kan være mer intuitive enn tekst. Det er lett å skrive test-kode basert på diagrammet.</span>

* **Ulemper**<span style="color:#ff7e7e;">: Diagrammene blir lett store, hvis de skal dekke alle relevante tilfeller. Det er kun i enkle tilfeller en kan beskrive oppførselen komplett.</span>

![image alt text](image_0.png)

**S****ekvensdiagrammer**

Interaksjonsdiagrammer viser hvordan objekter i en objektstruktur bruker hverandre, dvs. kaller hverandres metoder. Det finnes to varianter: samhandlingsdiagrammer utvider objektdiagrammer med visning av (sekvenser av) metodekall, og sekvensdiagrammer viser metodekall mellom objekter langs en tidslinje.

**K****lassediagrammer (klasser og assosiasjoner inkl. kardinalitet)**

viser klassestrukturen til et program, med innholdet i klasser (attributter og operasjoner) og hvordan de er koblet sammen med arv og assosiasjoner.
