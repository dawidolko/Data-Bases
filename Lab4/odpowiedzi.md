# Zadania 
 
## 1.	Integralność Danych: 
a.	Jakie są główne aspekty integralności danych w bazie danych? 

b.	W jaki sposób ograniczenia integralności referencyjnej, takie jak klucze obce, wpływają na spójność relacji w bazie danych? 

c.	Dlaczego stosowanie unikalnych indeksów jest istotne dla zapobiegania duplikatom danych? 
## 2.	Transakcje Atomowe: 
a.	W jaki sposób transakcje atomowe przyczyniają się do utrzymania spójności danych w bazie danych? 

b.	Dlaczego istotne jest, aby operacje na bazie danych były albo w pełni zakończone, albo w ogóle nie miały miejsca? 

c.	Jakie są korzyści stosowania transakcji w kontekście integralności danych? 
## 3.	Indeksy: 
a.	Jakie są główne rodzaje indeksów w bazach danych? 

b.	W jaki sposób indeks klastrowy różni się od indeksu nieklastrowego? 

c.	Kiedy należy stosować indeksy, a kiedy mogą wprowadzać niepożądane efekty? 
## 4.	Optymalizacja Zapytań SQL: 
a.	Dlaczego optymalizacja zapytań SQL jest istotna dla wydajności baz danych? 

b.	Jakie są główne kroki w optymalizacji zapytań SQL? 

c.	Dlaczego unikanie operacji skanowania pełnego może poprawić wydajność zapytań? 
## 5.	Zarządzanie Indeksami: 
a.	Jakie są zalety i wady posiadania wielu indeksów w bazie danych? 

b.	W jaki sposób nadmierny indexing może wpływać na wydajność operacji aktualizacji danych? 

c.	Jak utrzymać równowagę między ilością indeksów a wydajnością systemu? 
## 6.	Optymalizacja Struktury Tabel: 
a.	Dlaczego wybór odpowiednich typów danych ma znaczenie dla optymalizacji baz danych? 

b.	Jak minimalizacja ilości kolumn może przyczynić się do efektywnego przechowywania danych? 

c.	W jaki sposób optymalizacja struktury tabel wpływa na wydajność operacji na danych? 
## 7.	Backup i Odtwarzanie: 
a.	Dlaczego regularne tworzenie kopii zapasowych bazy danych jest kluczowe dla utrzymania integralności danych? 

b.	Jakie są kroki przywracania danych z kopii zapasowej, i dlaczego warto je regularnie testować? 

c.	W jaki sposób procedury związane z backupem i odtwarzaniem pomagają minimalizować ryzyko utraty danych? 

# Odpowiedzi:

## 1.	Integralność Danych: 
a. Główne aspekty to: klucze pierwotne, klucze obce, ograniczenia domeny oraz reguły biznesowe. 

b. Ograniczenia integralności referencyjnej, takie jak klucze obce, zapewniają, że relacje między tabelami są spójne. Uniemożliwiają one dodawanie rekordów do tabeli, które nie mają odpowiadającego im rekordu w powiązanej tabeli. 

c. Unikalne indeksy zapobiegają duplikatom, zapewniając, że każda wartość w indeksowanym polu lub zestawie pól jest unikalna.
## 2.	Transakcje Atomowe: 
a. Transakcje atomowe zapewniają, że wszystkie operacje w ramach jednej transakcji są wykonane w całości lub wcale, co pomaga w utrzymaniu spójności danych. 

b. Jeśli operacje byłyby częściowo zakończone, mogłoby to spowodować niespójności w bazie danych. 

c. Transakcje zapewniają integralność danych poprzez zachowanie spójności w przypadku awarii oraz izolację operacji, tak aby inne operacje nie były zakłócane.
## 3.	Indeksy: 
a. Główne rodzaje to: indeksy klastrowe, indeksy nieklastrowe, indeksy pełnotekstowe i indeksy przestrzenne. 

b. Indeks klastrowy definiuje fizyczny porządek przechowywania danych w tabeli, podczas gdy indeks nieklastrowy jest oddzielną strukturą od tabeli. 

c. Indeksy przyspieszają zapytania, ale mogą spowolnić operacje wstawiania, aktualizacji i usuwania. Nie zawsze warto indeksować każde pole; ważne jest zrozumienie i monitorowanie wzorców zapytań.
## 4.	Optymalizacja Zapytań SQL: 
a. Optymalizacja zapytań jest kluczowa dla zapewnienia szybkości i efektywności baz danych. 

b. Główne kroki to: analiza planu zapytania, unikanie zbędnych operacji (np. skanowania pełnego), wykorzystywanie indeksów oraz dostosowywanie struktury tabeli. 

c. Skanowanie pełne jest czasochłonne, zwłaszcza dla dużych tabel. Unikanie tego znacznie przyspiesza zapytania.
## 5.	Zarządzanie Indeksami: 
a. Zalety: szybsze zapytania. Wady: spowolnienie operacji wstawiania, aktualizacji i usuwania oraz dodatkowe miejsce na dysku. 

b. Indeksy wymagają aktualizacji podczas modyfikacji danych, co może spowolnić operacje. 

c. Należy monitorować wydajność i dostosowywać ilość indeksów w zależności od potrzeb aplikacji.
## 6.	Optymalizacja Struktury Tabel: 
a. Wybór odpowiednich typów danych optymalizuje miejsce i poprawia wydajność zapytań. 

b. Mniejsza ilość kolumn oznacza mniej danych do przetwarzania, co przyspiesza operacje. 

c. Struktura wpływa na sposób przechowywania danych, co bezpośrednio wpływa na szybkość operacji.
## 7.	Backup i Odtwarzanie: 
a. Regularne kopie zapasowe zapewniają ochronę przed utratą danych. 

b. Kroki przywracania to: wybór kopii zapasowej, przywrócenie kopii oraz sprawdzenie integralności danych. Regularne testy gwarantują, że backupy są użyteczne. 

c. Procedury backupu i odtwarzania minimalizują ryzyko utraty danych przez awarie, błędy ludzkie czy ataki.













