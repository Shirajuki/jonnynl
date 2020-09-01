# Øving 11 - Ekstraøving

Denne øvingen handler om en **Restaurant**-klasse. Vi har startet 
på klassene for deg, og din jobb blir å fortsette på dem, slik deloppgavene spesifiserer. 

Skjelettkoden finner du i `ovinger\src\restaurant`, og det er også her du skal jobbe videre med koden. Det er
markert med `// TODO` flere steder i skjelettkoden der du skal legge til kode, men disse er ikke dekkende for
alle stedene kode skal legges til. De fleste av TODO-ene kan du finne vha. 
**Tasks**-panelet i Eclipse (`Window > Show View > Other... > General > Tasks`). Dessverre vises ikke alle TODO-er i dette panelet.
F.eks. er det TODO-er i `seatGroup`-metoden og `isTable`-metoden i 
**Restaurant**-klassen som ikke vises.

Det er ingen testkode til denne øvingen, så vi oppfordrer til å skrive main-metoder underveis
som sjekker at koden deres har ønsket oppførsel.

## Del 1 - Group og Table
I denne deloppgaven skal du skrive ferdig **Group**- og **Table**-klassene.

#### Group
**Group**-klassen inneholder data om antall gjester i gruppen, og denne dataen oppgis ved opprettelse av objekter
og skal siden ikke kunne endres. I tillegg skal **Group** ha en kobling til et bord (et **Table**-objekt). Denne koblingen
settes IKKE ved opprettelse av **Group**-objekter, men kan settes og endres når som helst i **Group**-objektenes levetid. 

Kravene for **Group**-klassen er som følger:
1. Skal inneholde data om antall gjester i gruppen.
1. Skal ha en kobling til **Table**.
1. Skal ha nødvendige innkapslingsmetoder.
1. En **Group** skal ikke kunne sitte på et bord som ikke har nok stoler.

I tillegg skal du kunne svare muntlig på følgende spørsmål:
* Om **Group** hadde hatt en metode for å endre antall gjester, hva ville du måtte endret for å sikre regel 4.? 

#### Table
**Table** er en abstrakt klasse med følgende metoder som du skal skrive:
* `getCapacity()` - abstrakt metode som ved implementasjon skal returnere kapasiteten til bordet.
* `getGroup()` - returnerer gruppen som sitter ved bordet.
* `setGroup(Group group)` - plasserer gruppen *group* ved bordet om det er plass. `IllegalArgumentException`
skal utløses om gruppens antall er større enn bordets kapasitet.

I tillegg har **Table**-klassen følgende krav som koden din skal oppfylle:
1. Skal kunne sammenlignes med andre bord på kapasitet. Bordet med minst kapasitet skal komme først ved sortering.
Dette kan gjøres vha. **Comparable**-grensesnittet.


## Del 2 - SimpleTable og CompositeTable
Din oppgave er å implementere **SimpleTable** og **CompositeTable** slik at disse 
klassene oppfyller kravene under.

#### SimpleTable
**SimpleTable** er et enkelt bord, og skal inneholde data om antall stoler (altså bordets kapasitet). 
Kapasiteten til et **SimpleTable**-objekt vil ikke endre seg i løpet av objektets levetid.

Kravene for **SimpleTable**-klassen er som følger:
1. Skal arve fra **Table**-klassen.
1. Skal inneholde data om antall stoler.
1. Skal ha et bordnummer som er unikt. Dette unike løpenummeret oppgis ikke, men settes automatisk av kode 
i **SimpleTable**-klassen selv når **SimpleTable**-objekter opprettes. Det aller første bordet som lages skal få *1* som nummer, 
det andre skal få *2* osv. *(Hint: static-modifikatoren)*
1. Skal ha nødvendig innkapslingsmetoder. Her må metoden `getID()` være med for å hente ut løpenummeret, 
siden denne metoden brukes i skjelettkoden.


#### CompositeTable
Det er ønskelig å kunne sette bord sammen til større bord for å få plass til store grupper,
i tillegg til å splitte bord fra hverandre igjen senere.
En måte å håndtere dette på er ved å ha to typer bord: **SimpleTable** og **CompositeTable**.
Her er **SimpleTable** enkeltstående bord og **CompositeTable** bord som er satt sammen. 
Det er da viktig at **CompositeTable** holder rede på hvilke bord som er satt sammen, slik at disse kan splittes
igjen senere.

Kravene for **CompositeTable**-klassen er som følger:
1. Skal arve fra **Table**-klassen.
1. Skal ta inn to instanser av **Table** (dvs. de to bordene som skal slås sammen) i konstruktøren 
og et heltall som spesifiserer kapasiteten som mistes ved å slå disse bordene sammen. **NB**: Du trenger ikke tenke på 
hvordan den tapte kapasiteten regnes ut, den skal bare gis inn til konstruktøren som et argument.
1. Skal ha nødvendig innkapsling.


## Del 3 - Restaurant
**Restaurant**-klassen holder rede på **Table**, og dermed også hvilke grupper som sitter ved bordene.
 
Skriv ferdig de følgende metodene i **Restaurant**-klassen:
 
  * `isOccupied(Table table)` - Returnerer `true` om bordet er opptatt, `false` ellers.
  * `getCapacity(boolean includeOccupied)` - Returnerer alle bordenes kapasitet. *includeOccupied* bestemmer om opptatte bord skal tas med. 
  **NB**: For denne metoden **kreves det** at du benytter deg av *Streams*. Om du sliter med dette anbefaler vi å lese deg opp [her](https://www.ntnu.no/wiki/display/tdt4100/Lambda-uttrykk+og+funksjonelle+grensesnitt+i+Java+8) og sjekke ut [denne](https://www.youtube.com/watch?v=t1-YZ6bF-g0) videoen. 
  *Tips*: Bruk map og filter.
  * `addTable(Table table)` - Legger til **Table**-objektet *table* i restauranten. Husk at samme bord IKKE skal kunne legges til flere ganger.
  * `removeTable(Table table)` - Fjerner **Table**-objektet *table* fra restauranten. Husk at man IKKE skal kunne fjerne bord det sitter noen på.
  * `mergeTables(Table table1, Table table2, int lostCapacity)` - Setter sammen *table1* og *table2* til et større bord. Husk at man IKKE kan sette sammen bord det allerede sitter noen på.
  * `splitTable(CompositeTable table)` - Splitter bordet *table* i to bord.
  * `hasCapacity(Table table, int capacity)` - Returnerer `true` om det er plass til den gitte kapasiteten (*capacity*) på bordet (*table*) og bordet er ledig. Returnerer `false` ellers.
  * `findAvailableTables(int capacity)` - Finner alle ledige bord med plass til den gitte kapasiteten (*capacity*) og returnerer en sortert liste der bord med minst kapasitet kommer først.
  * `seatGroup(Group group)` - Finner et passende bord for *group*, dvs. bordet med minst kapasitet som fremdeles
  er strot nok for gruppen og som er ledig, og plasserer gruppen ved dette bordet om et slikt bord finnes.
  Om gruppen blir plassert ved et bord, skal `true` returneres, og `false` ellers. Om gruppen allerede er plassert
  ved et bord skal det utløses et unntak av typen `IllegalArgumentException`. For denne metoden er en god del av koden allerede
  skrevet, og din jobb blir å fylle ut der det står `// TODO`. Det vil variere hvor mye som må fylles ut ved disse TODO-ene.
  * `removeGroupFromTable(int tableID)` - Fjerner gruppen ved bordet med bordnummer *tableID*. For denne metoden er en god del av koden allerede
  skrevet, og din jobb blir å fylle ut der det står `// TODO`. Legg også merke til
  at `findTable(tableID)` kalles i denne metoden og at `isTable(table, tableID)` kalles i `findTable`. Dette er viktig å bemerke seg siden 
  `isTable` har to `// TODO` som du må fylle ut. I disse TODO-ene får du bruk for get-metoder fra **CompositeTable**-klassen.


## Del 4 - Waiter
Gjestene på en **Restaurant** skal bli tatt imot av en **Waiter**
som skal prøve å plassere dem. Dersom det ikke går, så må de 
vente på at et bord med nok kapasitet blir ledig. **Waiter** vil 
altså ha behov for å følge med på hvordan kapasiteten til 
**Restaurant**-objektet endres. Dette gjøres ved å gjøre **Restaurant**
 sin kapasitet-attributt, som returneres av et kall til 
 `getCapacity(false)`, *observerbar*.

Din oppgave er å få **Waiter**-objekter til å observere **Restaurant** sin kapasitet-egenskap. Det er derimot ikke
nødvendig å implementere logikk rundt plassering av ventende grupper. 

Legg merke til at du alt har fått utdelt grensesnittet **CapacityListener**.

Det du skal gjøre er altså å:
* Implementere grensesnittet **CapacityListener** i korrekt klasse. Det eneste metoden 
`capacityChanged(Restaurant restaurant)` skal gjøre, er å skrive til konsoll den nye kapasiteten til 
*restaurant*. Du trenger altså ikke implementere noe mer logikk for denne metoden.
* Gjøre **Restaurant** sin kapasitet-attributt observerbar. **Restaurant** trenger altså en oversikt over 
alle objektene som lytter på det, mulighet får å legge til og fjerne lyttere, og logikk som varsler observatørene
når det skjer en endring i kapasitet.
