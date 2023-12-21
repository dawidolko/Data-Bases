# Zadania 
### 1.	Definicja Klucza Głównego (Primary Key): 
a. Wyjaśnij, dlaczego klucz główny jest istotny w relacyjnym modelu bazy danych. Opisz, jakie korzyści przynosi jego użycie w identyfikowaniu unikalnych rekordów w tabeli. 
### 2.	Różnice między Kluczem Głównym a Kluczem Obcym: 
a. Omów główne różnice między kluczem głównym a kluczem obcym. 

Podaj przykłady sytuacji, w których każdy z tych kluczy jest stosowany. 
### 3.	Atrybuty Proste vs. Atrybuty Złożone: 
a. Wyjaśnij różnicę między atrybutem prostym a atrybutem złożonym. 

Podaj przykłady dla obu rodzajów atrybutów. 
### 4.	Różnice między Atrybutem Pochodnym a Atrybutem Przechowywanym: 
a. Opisz różnicę między atrybutem pochodnym a atrybutem przechowywanym. Przedstaw sytuacje, w których stosuje się każdy z tych rodzajów atrybutów. 
### 5.	Zastosowanie Wartości NULL: 
a. W jakich sytuacjach wartość NULL jest używana w relacyjnych bazach danych? Wyjaśnij znaczenie wartości NULL i przedstaw przykłady, kiedy może być ona stosowana. 
### 6.	Projektowanie Bazy Danych a Bezpieczeństwo Danych: 
a. Jak projektowanie bazy danych przyczynia się do zapewnienia bezpieczeństwa danych? Omów różne aspekty projektowania, które mogą mieć wpływ na bezpieczeństwo danych. 
### 7.	Znaczenie Klucza Jednoznacznego w Kontekście Relacyjnych Baz Danych: 
a. Jak klucz jednoznaczny różni się od klucza głównego? Wytłumacz, dlaczego identyfikacja zbioru encji za pomocą klucza jednoznacznego jest istotna w relacyjnych bazach danych. 
### 8.	Etap Projektowania Fizycznego Bazy Danych: 
a. Co obejmuje etap projektowania fizycznego w tworzeniu relacyjnej bazy danych? Opisz decyzje i kroki, które są podejmowane na tym etapie. 
### 9.	Integralność Danych w Relacyjnych Bazach Danych: 
a.	Wytłumacz, dlaczego integralność danych jest istotna w relacyjnych bazach danych. Opisz różne rodzaje integralności danych i jak są one utrzymane w systemie bazodanowym. 
### 10.	Zastosowanie Schematów Tabel i Indeksów w Projektowaniu Bazy Danych: 
a.	Jak schematy tabel i indeksy są używane w projektowaniu relacyjnej bazy danych? Przedstaw korzyści wynikające z ich zastosowania oraz ich wpływ na wydajność systemu bazodanowego. 
### 11.	Znaczenie Analizy Wymagań w Projekcie Bazy Danych: 
a.	Omów, dlaczego analiza wymagań jest kluczowym etapem w projektowaniu bazy danych. Wyjaśnij, jakie informacje są zbierane i jak wpływają na kształtowanie struktury bazy danych. 
### 12.	Rola Diagramu Związków Encji (ERD) w Projekcie Koncepcyjnym: 
a.	Wytłumacz, jak diagramy związków encji (ERD) są używane w fazie projektowania koncepcyjnego. Opisz elementy takiego diagramu i jakie informacje można z niego uzyskać. 
### 13.	Reguły Integralności Danych a Spójność Danych: 
a.	Jak reguły integralności danych przyczyniają się do utrzymania spójności danych w relacyjnej bazie danych? Przedstaw różne rodzaje reguł integralności i ich roli w zapewnianiu poprawności danych. 
### 14.	Zastosowanie Zapytań i Widoków w Projektowaniu Fizycznym: 
a.	Wyjaśnij, jak zapytania i widoki są używane podczas projektowania fizycznego bazy danych. Przedstaw korzyści z utworzenia widoków i ich roli w dostępie do danych. 
### 15.	Wpływ Klucza Głównego na Wydajność Bazy Danych: 
a.	Jak wybór klucza głównego może wpływać na wydajność bazy danych? Przedstaw różnice między kluczem naturalnym a sztucznym oraz ich wpływ na indeksowanie i operacje na danych. 

# ODPOWIEDZI:

### 1. Definicja Klucza Głównego (Primary Key): 
a. Klucz główny to atrybut lub zbiór atrybutów, który jednoznacznie identyfikuje każdy wiersz w tabeli. Jest istotny w relacyjnym modelu bazy danych, ponieważ zapewnia unikalność rekordów i pozwala na szybkie odnalezienie konkretnego rekordu.
### 2. Różnice między Kluczem Głównym a Kluczem Obcym: 
a. Klucz główny jednoznacznie identyfikuje rekordy w tabeli, podczas gdy klucz obcy odnosi się do klucza głównego innej tabeli, tworząc relację między tabelami. Na przykład: w tabeli zamówień klucz główny może identyfikować konkretne zamówienie, a klucz obcy może wskazywać klienta składającego to zamówienie.
### 3. Atrybuty Proste vs. Atrybuty Złożone: 
a. Atrybut prosty nie może być dalej podzielony (np. imię studenta), podczas gdy atrybut złożony składa się z wielu składowych (np. adres składający się z ulicy, numeru domu, kodu pocztowego).
### 4. Różnice między Atrybutem Pochodnym a Atrybutem Przechowywanym: 
a. Atrybut przechowywany jest bezpośrednio zapisywany w bazie (np. data urodzenia), natomiast atrybut pochodny jest obliczany na podstawie innych atrybutów (np. wiek obliczany na podstawie daty urodzenia).
### 5. Zastosowanie Wartości NULL: 
a. NULL oznacza brak wartości. Może być używany, gdy wartość atrybutu nie jest znana lub nie dotyczy konkretnej encji (np. data ślubu dla osoby nieżonatej).
### 6. Projektowanie Bazy Danych a Bezpieczeństwo Danych: 
a. Poprzez odpowiednie projektowanie bazy można zapewnić integralność, spójność i bezpieczeństwo danych. Obejmuje to np. definiowanie reguł integralności, tworzenie kopii zapasowych czy zastosowanie odpowiednich mechanizmów uwierzytelniania.
### 7. Znaczenie Klucza Jednoznacznego w Kontekście Relacyjnych Baz Danych: 
a. Klucz jednoznaczny jednoznacznie identyfikuje rekordy, ale nie jest kluczem głównym. Może być kilka kluczy jednoznacznych w jednej tabeli, ale tylko jeden klucz główny.
### 8. Etap Projektowania Fizycznego Bazy Danych:
a. W projektowaniu fizycznym określa się, jak dane będą przechowywane w DBMS - definiuje się organizację plików, indeksy, widoki oraz parametry wydajności.
### 9. Integralność Danych w Relacyjnych Bazach Danych: 
a. Integralność danych zapewnia, że dane są poprawne i spójne. Mechanizmy DBMS, takie jak reguły integralności, klucze obce czy procedury sprawdzające, pomagają w jej utrzymaniu.
### 10. Zastosowanie Schematów Tabel i Indeksów w Projektowaniu Bazy Danych: 
a. Schematy tabel określają strukturę danych, a indeksy przyspieszają wyszukiwanie danych. Poprawne użycie schematów i indeksów zwiększa wydajność bazy danych.
### 11. Znaczenie Analizy Wymagań w Projekcie Bazy Danych: 
a. Analiza wymagań pozwala zrozumieć potrzeby użytkowników i zapewnia, że baza danych będzie spełniała oczekiwania. W tym etapie zbiera się informacje o danych, ich relacjach oraz operacjach na nich.
### 12. Rola Diagramu Związków Encji (ERD) w Projekcie Koncepcyjnym: 
a. ERD przedstawia relacje między encjami w bazie. Pokazuje, jakie dane będą przechowywane i jak są ze sobą powiązane.
### 13. Reguły Integralności Danych a Spójność Danych: 
a. Reguły integralności (np. integralność domenowa, referencyjna) zapewniają, że dane są poprawne i spójne, co przyczynia się do wiarygodności i bezpieczeństwa bazy.
### 14. Zastosowanie Zapytań i Widoków w Projektowaniu Fizycznym: a. Zapytania pozwalają na manipulację danymi, a widoki są predefiniowanymi zapytaniami, które prezentują dane w określony sposób. Ułatwiają dostęp do danych i mogą zapewnić dodatkowe zabezpieczenia.
### 15. Wpływ Klucza Głównego na Wydajność Bazy Danych: 
a. Wybór odpowiedniego klucza głównego jest kluczowy dla wydajności. Klucze naturalne (istniejące w rzeczywistości) mogą być dłuższe lub zmienne, podczas gdy klucze sztuczne (utworzone specjalnie dla bazy) są stałe i często krótsze, co przyspiesza operacje na danych

