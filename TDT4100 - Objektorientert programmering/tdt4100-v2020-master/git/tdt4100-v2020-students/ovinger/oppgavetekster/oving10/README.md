# Øving 10: Testing av app

**Øvingsmål**
*  Lære hvordan man kan teste kode med å skrive egne tester

**Øvingskrav**
*  Kunne skrive JUnit-tester

## Dette må du gjøre
I denne øvingen skal du skrive tester til logikken til appen din fra øving 4 og
7 for å verifisere at appen oppfører seg som den skal og at du har innkapslet 
tilstrekkelig. Dette innebærer at du lager følgende tester:

* en JUnit-test som verifiserer at du kan skrive innhold til fil og laste inn 
igjen slik som spesifisert i øving 7.
* JUnit-tester som tester all sentral funksjonalitet i appen din. I 
utgangspunktet bør alle metoder testes med både gyldig og ugyldig input slik at
du tester både logikk og innkapsling. Hvis du har laget en veldig stor app
trenger du ikke skrive tester for all funksjonaliteten din. Hvis du har en 
ganske liten app med få metoder må du skrive grundige tester for disse. 
Dette avtaler du nærmere med studassen din.  


**NB:** Du trenger altså ikke å teste at controller-klassen, app-klassen 
eller brukergrensesnittet fungerer. Hvis du har logikk i controller-klassen 
må dette separeres ut til logikk-klasser. 

Det kan være lurt å lese [wikisidene om enhetstesting med JUnit](https://www.ntnu.no/wiki/display/tdt4100/Enhetstesting+med+JUnit) 
før du begynner.


### Hjelp / mistanke om bugs
Ved spørsmål eller behov for hjelp konsulter studassen din i saltiden 
hans / hennes. Du kan også oppsøke andre studasser i Veiledningskanalen på Teams 
eller legge ut et innlegg på [Piazza](https://piazza.com/).

### Godkjenning
Last opp kildekode på Blackboard innen den angitte innleveringsfristen. 
Innlevert kode skal demonstreres for stud.ass innen én uke etter 
innleveringsfrist. Se for øvrig Blackboard-sidene for informasjon rundt 
organisering av øvingsopplegget og det tilhørende øvingsreglementet.