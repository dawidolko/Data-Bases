# Zadania 
 
## 1.	Modelowanie pojęciowe i Bazy Danych: 
a.	Jakie są główne cele modelowania pojęciowego w kontekście baz danych? 

b.	Dlaczego klucze są istotne w modelowaniu pojęciowym? 

c.	W jaki sposób diagramy ERD pomagają w zrozumieniu struktury bazy danych? 
## 2.	Język Opisu Danych (DDL): 
a.	Jakie są kluczowe elementy języka DDL? 

b.	Co oznacza instrukcja "CREATE TABLE" w języku DDL i jakie są jej zastosowania? 

c.	Dlaczego klucze główne i obce są ważne przy definiowaniu struktury bazy danych za pomocą DDL? 
## 3.	Język Manipulowania Danymi (DML): 
a.	W jaki sposób instrukcje DML pozwalają na manipulację danymi w bazie danych? 

b.	Jakie są podstawowe operacje, które można wykonywać za pomocą instrukcji DML? 

c.	Dlaczego instrukcja "SELECT" jest traktowana zarówno jako część DML, jak i jako część języka zapytań? 
## 4.	Transakcje w Bazie Danych: 
a.	Co oznacza, że transakcja jest atomowa? 

b.	Jakie są cechy transakcji, takie jak spójność, izolacja i trwałość? 

c.	Przedstaw przykłady sytuacji, w których transakcje są używane w bazach danych. 
## 5.	Zarządzanie Transakcjami: 
a.	Jak rozpoczyna się transakcję w bazie danych? 

b.	W jaki sposób system bazy danych zarządza zatwierdzaniem i cofaniem transakcji? 

c.	Co to jest izolacja transakcji i dlaczego jest ważna w kontekście równoczesnego dostępu do danych? 

# Odpowiedzi:

## 1.	Modelowanie pojęciowe i Bazy Danych: 
a. Główne cele modelowania pojęciowego to:

•	Reprezentacja struktury danych w sposób zrozumiały dla użytkowników.

•	Określenie relacji między danymi.

•	Zapewnienie fundamentu dla fizycznej realizacji bazy danych.

•	Ułatwienie komunikacji pomiędzy projektantami a użytkownikami. 

b. Klucze są istotne w modelowaniu pojęciowym, ponieważ:

•	Umożliwiają jednoznaczną identyfikację rekordów.

•	Ułatwiają tworzenie relacji między tabelami.

•	Pomagają w utrzymaniu integralności danych. 

c. Diagramy ERD (Entity Relationship Diagrams) pomagają w zrozumieniu struktury bazy danych przez:

•	Wizualizację encji i relacji między nimi.

•	Określenie atrybutów dla encji.

•	Pokazywanie kluczy głównych i obcych.
## 2.	Język Opisu Danych (DDL): 
a. Kluczowe elementy języka DDL to:

•	CREATE

•	ALTER

•	DROP

•	CONSTRAINT 

b. Instrukcja "CREATE TABLE" w języku DDL służy do tworzenia nowej tabeli w bazie danych. Definiuje strukturę tabeli, w tym nazwy kolumn, typy danych i ograniczenia. 

c. Klucze główne i obce są ważne przy definiowaniu struktury bazy danych za pomocą DDL, ponieważ:

•	Klucze główne zapewniają unikalność rekordów w tabeli.

•	Klucze obce umożliwiają tworzenie relacji między tabelami, co pomaga w zachowaniu integralności danych.
## 3.	Język Manipulowania Danymi (DML): 
a. Instrukcje DML pozwalają na:

•	Wstawianie danych do tabel.

•	Modyfikację istniejących danych.

•	Usuwanie danych z tabel.

b. Podstawowe operacje za pomocą instrukcji DML to:

•	INSERT

•	UPDATE

•	DELETE

•	SELECT 

c. Instrukcja "SELECT" jest traktowana zarówno jako część DML, jak i jako część języka zapytań, ponieważ pozwala na zarówno pobieranie danych z bazy, jak i manipulowanie nimi (np. przez sortowanie, grupowanie).
## 4.	Transakcje w Bazie Danych: 
a. Transakcja jest atomowa, co oznacza, że jest traktowana jako jedna niepodzielna jednostka pracy – albo jest w pełni zakończona, albo w ogóle nie jest realizowana. 

b. Cechy transakcji to:

•	Spójność: zapewnia, że baza danych zawsze przechodzi z jednego spójnego stanu do innego.

•	Izolacja: zapewnia, że każda transakcja jest wykonywana niezależnie od innych transakcji.

•	Trwałość: zapewnia, że raz zakończone transakcje są trwale zapisane. 

c. Przykłady sytuacji, w których transakcje są używane:

•	Transfer pieniędzy między kontami bankowymi.

•	Aktualizacja stanu magazynowego po zakupie produktu.

•	Rezerwacja miejsc w hotelu.
## 5.	Zarządzanie Transakcjami: 
a. Transakcję w bazie danych rozpoczyna się za pomocą instrukcji, takich jak "BEGIN TRANSACTION". 

b. System bazy danych zarządza zatwierdzaniem i cofaniem transakcji poprzez:

•	"COMMIT": zatwierdzenie zmian wprowadzonych przez transakcję.

•	"ROLLBACK": anulowanie zmian wprowadzonych przez transakcję. 

c. Izolacja transakcji oznacza, że działania jednej transakcji są niewidoczne dla innych transakcji aż do jej zakończenia. Jest to ważne, aby zapewnić spójność danych i uniknąć konfliktów podczas równoczesnego dostępu do danych.

