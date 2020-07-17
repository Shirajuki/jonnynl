---
layout: post
tags: TDT4180
categories: TDT4180
---

DESIGNPRINSIPPER
- Forstå hvilken funksjon designprinsipper har i design av grafiske brukergrensesnitt.
- Don Normans seks prinsipper
- Jacob Nielsens ti prinsipper
- Prinsipper for universell utforming og WCAG

Konvensjoner
- Etablerte, anerkjente regler (normer) for hva slike komponenter benyttes til forbindelse med GUI-design. Radio button, checkbox, anchor links osv…
**Designprinsipper** (retningslinjer/heuristikker)
- Erfaringsbasert designkunnskap - generelle regler osv…
- Generaliserbarhet
- Organisering av el, lede brukerens oppmerksomhet, nav, forenkling av inputs.
- Fungerer som “sjekklister” i designprosessen.
Teorier
- Konseptuelle og mentale modeller, Gestalt osv...
Brukskvalitet (usability)
- Nødvendig å teste brukskvaliteten til designløsningen selvom vi følger designprinsippene. Spesifikke aspekter.



## <span style='color:#ff7e7e;'>**Don Normans designprinsipper**</span> fra ”Design of Everyday Things“ – Læreboka, kap. 1.6.3
1. **Visibility** - Kan jeg se det?
	- Synlig funksjonalitet - forståelse til brukeren - mål til aksjoner
	- Funksjoner som meny, tabs, view er vanskeligere å finne/skjønne
	- Skjermstørrelse - mobil vs pc - antall elementer
2. **Affordance** - Hvordan kan jeg bruke det?
	- Referer til hvilken handling en gjenstand signaliserer gj. Sin fysiske utforming.
	- Ting “inviterer” til visse handlinger eller bruksmuligheter, Dørhåndtak sier trykk meg, drikkeflaske sier drikk meg.
	- Dvs. at vi tolker/gjenkjenner relasjonene/signalene.Relasjon mellom et objekts utforming og en aktørs fysiske egenskaper
	- Gjør det åpenbart for bruker hvordan et produkt kan brukes.
	- Perceived affordance: grafiske grensesnitt har ikke “real affordance” - de er virtuelle. GUI-design er hva brukeren oppfatav mulige aksjoner som er viktig. Er det en knapp? Kan elementet trykkes på? Kan elementet dras?![](https://lh6.googleusercontent.com/YkEiPp9JdewpADb-IUaWR-aJjfJD7TNkGBOla1EtwkGNPpLrj3qnlMuBjWmww1u9N7iwHjG_7w5ZIFkLgFxpEXWnmaLrmhqw8bXYJVYp1RlDnrsQyvUXnHlEcwb00VCZnL1FpfG67zt9yKBjQw)
3. **Constraints** - Hvorfor kan jeg ikke gjøre slik?
	- Signaliserer begrensninger i forhold til handlinger (hva som ikke lar seg gjøre med et produkt)
	- Knapper som er “grået ut” kan ikke trykkes, dato felt tillater bare tall
	- Affordance betinges av ulike typer constraints:
		- Det fysiske: kroppen og gjenstandens anatomi (knappen)
		- Det kulturelle: Konvensjoner som læres, grå knapp betyr no
		- Det logiske: resonering, knapper på bildøre brukes for å styre ting på døra (dørlås, vindu osv...)

4. **Feedback** (tilbakemelding) - Hva skjer nå?
	- Informasjon til brukeren om aksjoner som har blitt utført og tilstander.
	- “Fullfører” affordance - info om at handlingen er utført mens affordance gir info om handlinger som kan gjøres med en gjenstand.
	- “Det ser som en knapp og det oppfører seg som en knapp”
	- Gyldige handlinger skal ALLTID gi feedback, onevents!
		- Visuell: musepeker, progressbar, knapp som trykkes ned
		- Auditiv: feil-beep, varsel ved notifikasjon
		- Taktil: varierende motstand, vibrasjon, shake
		- Kombinasjon av visuell, auditiv og taktil feedback.
5. **Mapping** (overføring) - Hva fører til hva? Sammenheng mellom k og e naturlig?
	- Sammenhengen mellom kontrollelementer (layout og interaksjon) og deres effekt i praksis. KONTROLL OG EFFEKT.
	- Volumkontroll med knapper over hverandre, opp og ned, vri-knapp
	- “Natural mapping” - layout på kontroll, sammenheng mellom int. og effekt

6. **Consistency** - Har jeg ikke sett dette før? 
	- Elementer som ser like ut bør ha samme funksjon, elementer med samme funksjon bør se like ut.
	- Benytte seg av tidligere erfaringer med lignende produkter - kontrollel.
	- Inkonsistens skaper forvirring.

## <span style='color:#ff7e7e;'>**Jacob Nielsens 10 brukbarhets-heuristikker**</span> – [http://www.useit.com/papers/heuristic/heuristic_list.html](http://www.useit.com/papers/heuristic/heuristic_list.html)
1. **Visibility of system status.**
	1. Systemet skal alltid vise brukeren hva som foregår i maskinen, gjennom relevant tilbakemelding innen rimelig tid.
2. **Match between system and the real world**
	2. Snakk brukerens språk! Bruke begreper, ord og framstillingsmåte (metaforer) som brukeren forstår.
	3. Eks: MSpaint - penn, pensel, viskelær
3. **User control and freedom** 
	4. La brukeren ha kontroll, undo og redo på alle nivåer.
4. **Consistency and standards**
	5. Konsistens i grensesnittet, følge retningslinjene for platformen som brukes, style guides. New/Create, Delete/Clear
5. **Error prevention**
	6. Fleksibilitet, feilmelding i designet for å prevente problemer, minst mulig feil er mulig. Feilsjekking i inputs f.eks.
6. **Recognition rather than recall.**
	7. Kunnskap i verder, ikke hodet! Objects, actions og valger visible. Skal ikke huske informasjon fra et sted til annet, instruksjoner skal da være visible og lett retrievable når det er appropriate. Generelle hurtigtaster som ctrl+c, ctrl+v, ctrl+z osv...
7. **Flexibility and efficiency of use** 
	8. Accelerators, unseen by the novice user - speede opp interaksjoner for experte usere så system kan både brukes for nybegynner og eksperter.
	9. Avanserte shortcuts og lignende som ctrl+c og andre snarveier.
8. **Aesthetic and minimalist design.** 
	10. Alt som ikke tjener en hensikt skal vekk! Dialogues should not contain information which is irrelevant or rarely needed. Every extra unit of info competes with the relevant units of info and diminishes their relative visibility.
9. **Help users recognize, diagnose, and recover from errors.**
	11. Feilmelding skal bli expressed in plain langua (less codes), precisely to indicate the problem and constructively suggest a solution.
	12. Hjelper brukeren unngå og håndtere feil
10. **Help and documentation.**
	13. Even though it’s better if the system can be used without docs, it may be necessary to provide some help and docs. Any such info should be easy to search, focused on the user’s task, list concrete steps to be carried out, and not be too large.
	14. Lag et godt hjelpe system - hurtigref. - brukermanual - tooltips
- Shneidermans 8 golden rules – [https://www.cs.umd.edu/users/ben/goldenrules.html](https://www.cs.umd.edu/users/ben/goldenrules.html)
- Bruce Tognazzinis 19 First Principles [http://www.asktog.com/basics/firstPrinciples.html](http://www.asktog.com/basics/firstPrinciples.html)

Universell utforming - bygger på en forståelse av funksjonshemming som relasjonell
- Funksjonshemming oppstår når det ikke er samsvar mellom en persons funksjonsevner og kravene omgivelsene stiller - skapt av omgivelse (dårlig design), ikke en del av personen.
- Universell utforming tar utgangspunkt i menneskelig mangfold:
	- Forskjellige fysiske evner, kognitive evner, sanseevner
	- Alderdom, sykdom, kjønn, ulik kropp
- Ved å designe for menneskelig mangfold kan vi lage produkter som er lettere for alle å bruke.
## <span style='color:#ff7e7e;'>**De 7 prinsippene for Universell Design**</span> – [http://universaldesign.ie/What-is-Universal-Design/The-7-Principles/](http://universaldesign.ie/What-is-Universal-Design/The-7-Principles/)
1. **Like muligheter for bruk**
- Utforming skal være anvendbar og tilgjengelig for personer med ulike ferdigheter.
- Gi ulike brukergrupper samme muligheter til bruk, likeverdige løsninger.
- Unngå segregering og stigmatisering av brukere, mulighet for privatliv, sikkerhet og trygghet tilgjengelig for alle. Utformingen tiltalende for alle brukere. (Automatiske skyvedører)
2. **Fleksibel i bruk**
- Utformingen skal tjene et vidt spekter av individuelle pref og ferdigheter.
- Muliggjøre ulike valg av metoder for bruk, høyre + venstre håndsbruk for eks. Nøyaktighet og presisjon. Muliggjøre ferdigheter som samsvarer med brukerens tempo. Minibank med visuell, taktil og auditiv feedback osv...
3. **Enkel og intuitiv bruk**
- Utformingen skal være lett å forstå uten hensyn til brukerens erfaring, kunnskap, språkferdigheter eller konsentrasjonsnivå.
- Eliminere unødvendig kompleksitet, overensstemmelse med brukerens forventninger og intuisjon. Tjene et vidt spekter av lese-, skrive- og språkferdigheter. Info i konsist forhold til viktighet. Effektiv og raske tilbakemeldinger ila og etter at oppgaven er utført. (IKEA brukermanual)
4. **Forståelig informasjon**
- Utformingen skal kommunisere nødvendig informasjon til brukeren på en effektiv måte, uavhengig av forhold knyttet til omgivelsene eller brukerens sensoriske ferdigheter.
- Bruke forskjellige måter (bilde, verbal, taktil) for en bred presentasjon avv essensiell info. Kontraster mellom essensiell info og deres omgivelser.
- Maksimerer “lesbarheten” av essensiel info, kompatibilitet med forskj. typer teknikker og innretninger, til bruk for mennesker med sensoriske begr. (Flyplass: bred presentasjon av essensiell informasjon - auditiv info, flere språk, informasjonstavler)
5. **Toleranse for feil**
- Utformingen skal minimalisere farer og skader som kan gi ugunstige konsekvenser, eller minimaliserer utilsiktede handlinger.
- Arrangere elementen på en slik måte at en minimaliserer farer og feil; mest burte elementer, mest tilgjengelige; farlige elementer elimineres, isoleres eller skjermes.
- Sørge for advarsel om farer og feil, anordninger for feilsikkerhet, ikke oppmuntre til utilsiktede handlinger på områder som krever årvåkenhet. (Undo, tæpping kan skannes på begge sider)
6. **Lav fysisk anstrengelse**
- Utformingen skal kunne brukes effektivt og bekvemt med et minimum av besvær.
- Tillate brukeren å opprettholde en nøytral kroppsstilling
- Bruke rimelig betjeningsstyrke.
- Minimalisere gjentakende handlinger, vedvarende fysisk kraft. (berøringssensitive lamper erstatter på/av bryter)
7. **Størrelse og plass for tilgang og bruk**
- Hensiktmessig størrelse og plass skal muliggjøre tilgang, rekkevide, betjening og bruk, uavhengig av brukerens kroppsstørrelse, kroppstilling eller mobilitet.
- Muliggjøre en klar synslinje til viktige elementer for både sittende og stående brukere, at det er bekvem rekkevidde til alle komponenter for sittende og stående brukere.
- Muliggjører variasjoner i hånd- og gripestørrelse.
- Tilrettelegge nok rom for bruk av hjelpemidler og personlig assistanse. (Klar synslinje for sittende og stående, fysisk plass som muliggjør tilgang og bruk)
- WCAG 2.0-rettningslinjer – [http://www.w3.org/Translations/WCAG20-no/#guidelines](http://www.w3.org/Translations/WCAG20-no/#guidelines)
