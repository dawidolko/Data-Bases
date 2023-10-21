# Laboratorium 2 
## Bazy Danych 1 
### mgr. inż. Aleksander Wojtowicz 
 
### Relacyjny model bazy danych
to sposób reprezentacji danych w postaci logicznej, niezależnej od fizycznej organizacji plików. Relacyjny model bazy danych opiera się na tabelach, które składają się z kolumn i wierszy.  
 
Kolumny reprezentują atrybuty encji, a wiersze reprezentują egzemplarze encji. Encja to byt, który ma znaczenie dla dziedziny problemu i może być opisany za pomocą zbioru atrybutów.  
Na przykład, encją może być student, a jego atrybutami mogą być imię, nazwisko, numer indeksu, kierunek studiów itp. 
 
Tabele są ze sobą powiązane za pomocą kluczy głównych i obcych, które umożliwiają identyfikację i odwoływanie się do rekordów.  

### Klucz główny 
to atrybut lub zbiór atrybutów, który jednoznacznie identyfikuje każdy wiersz w tabeli.  

### Klucz obcy 
to atrybut lub zbiór atrybutów, który odnosi się do klucza głównego innej 
tabeli.  

*Na przykład, tabela studentów może mieć klucz główny numer indeksu, a tabela ocen może mieć klucz obcy numer indeksu, który wskazuje na studenta, któremu należy ocena.*
 
### Budowa tabeli 
określa nazwę tabeli, nazwy i typy danych kolumn oraz ograniczenia nałożone na wartości kolumn.  

### Typ danych 
określa rodzaj i zakres wartości, które mogą być przechowywane w kolumnie.  

*Na przykład, typ danych liczbowy może przechowywać tylko liczby całkowite lub zmiennoprzecinkowe.*

### Ograniczenia 
określają warunki, które muszą być spełnione przez wartości kolumn. 

*Na przykład, ograniczenie NOT NULL oznacza, że wartość kolumny nie może być pusta.*
 
### Atrybuty 
to właściwości encji, które opisują jej cechy lub stany. Atrybuty mogą być prostymi lub złożonymi, pojedynczymi lub wielokrotnymi, przechowywanymi lub pochodnymi.  
### Atrybut prosty 
to taki, który nie może być podzielony na mniejsze części.  

*Na przykład, imię studenta jest atrybutem prostym.*

### Atrybut złożony 
to taki, który może być podzielony na mniejsze części.  

*Na przykład, adres studenta jest atrybutem złożonym, który składa się z ulicy, numeru domu, kodu pocztowego itp.*
 
### Atrybut pojedynczy 
to taki, który ma tylko jedną wartość dla danej encji.  

*Na przykład, numer indeksu studenta jest atrybutem pojedynczym.*

### Atrybut wielokrotny 
to taki, który może mieć wiele wartości dla danej encji.  

*Na przykład, hobby studenta jest atrybutem wielokrotnym.*

### Atrybut przechowywany 
to taki, który jest bezpośrednio wprowadzany do bazy danych.

*Na przykład, data urodzenia studenta jest atrybutem przechowywanym.*

### Atrybut pochodny 
to taki, który jest obliczany na podstawie innych atrybutów.  

*Na przykład, wiek studenta jest atrybutem pochodnym, który można obliczyć na podstawie daty urodzenia.*
 
### Wartość NULL 
oznacza brak wartości lub nieznane wartości w kolumnie tabeli. 

Wartość NULL nie jest równa zero ani pustemu ciągowi znaków.  

Wartość NULL może być użyta do reprezentowania sytuacji, gdy wartość kolumny nie jest znana lub nie dotyczy danej encji.  

*Na przykład, jeśli tabela zawiera kolumnę o nazwie data ślubu i rekord dotyczy osoby niezamężnej lub nieżonatej, to wartość kolumny data ślubu może być NULL.*
 
 
 ### Zbiory identyfikujące 
 to zbiory atrybutów, które jednoznacznie identyfikują encje w zbiorze encji. Zbiory identyfikujące mogą być kluczami jednoznacznymi lub kluczami głównymi.  
 
### Klucz jednoznaczny 
to zbiór atrybutów, który jednoznacznie identyfikuje encje w zbiorze encji, ale nie jest wybrany jako klucz główny.  

### Klucz główny 
to zbiór atrybutów, który jest wybrany jako główny sposób identyfikacji encji w zbiorze encji.  

Każdy zbiór encji może mieć tylko jeden klucz główny, ale może mieć wiele kluczy jednoznacznych.  

*Na przykład, w zbiorze encji studentów, numer indeksu może być kluczem głównym, a numer PESEL może być kluczem jednoznacznym.*
 
 
 
 
 
### Projektowanie bazy danych 
to proces tworzenia logicznej i fizycznej struktury bazy danych, która spełnia cele i wymagania użytkowników. Projektowanie bazy danych ma na celu zapewnienie poprawności, spójności, wydajności i bezpieczeństwa danych oraz ułatwienie dostępu i manipulacji danymi. Projektowanie bazy danych składa się z kilku etapów, takich jak analiza wymagań, projektowanie koncepcyjne, projektowanie logiczne i projektowanie fizyczne. 

### Etapy tworzenia relacyjnej bazy danych to: 
 
### Analiza wymagań: 
polega na określeniu celu i zakresu bazy danych oraz zbieraniu informacji o potrzebach i oczekiwaniach użytkowników. Na tym etapie tworzy się dokument specyfikacji wymagań, który zawiera opis dziedziny problemu, założenia i ograniczenia dotyczące danych i operacji na nich oraz scenariusze użycia bazy danych. 
 
### Projektowanie koncepcyjne: 
polega na tworzeniu abstrakcyjnego modelu danych, który reprezentuje główne byty, atrybuty i związki w dziedzinie problemu. Na tym etapie używa się diagramów związków encji (ERD) do graficznego przedstawienia struktury bazy danych. ERD składa się z prostokątów reprezentujących encje, elips reprezentujących atrybuty i linii reprezentujących związki. Linie mogą mieć różne symbole na końcach, które określają kardynalność i opcjonalność związku. 
Kardynalność określa liczbę rekordów, które mogą być powiązane w danym związku. 
Opcjonalność określa czy rekord musi być powiązany w danym związku. 
 
### Projektowanie logiczne: 
polega na przekształceniu modelu koncepcyjnego w model logiczny, który jest zgodny z regułami relacyjnego modelu danych. Na tym etapie tworzy się schematy tabel i ich kolumn oraz definiuje się klucze główne i obce oraz typy powiązań między tabelami. Ponadto definiuje się reguły integralności danych, które zapewniają poprawność, spójność i dokładność danych przechowywanych w bazie. 
 
### Projektowanie fizyczne: 
polega na implementacji modelu logicznego w konkretnym systemie zarządzania bazą danych (DBMS). Na tym etapie określa się fizyczną organizację plików i indeksów oraz parametry wydajności i bezpieczeństwa bazy danych. Ponadto tworzy się widoki i zapytania, które umożliwiają dostęp i manipulację danymi w bazie. 
 
 
## Zadania 
### 1.	Definicja Klucza Głównego (Primary Key): 
a. Wyjaśnij, dlaczego klucz główny jest istotny w relacyjnym modelu bazy danych. Opisz, jakie korzyści przynosi jego użycie w identyfikowaniu unikalnych rekordów w tabeli. 
### 2.	Różnice między Kluczem Głównym a Kluczem Obcym: 
a. Omów główne różnice między kluczem głównym a kluczem obcym. 

Podaj przykłady sytuacji, w których każdy z tych kluczy jest stosowany. 
### 3.	Atrybuty Proste vs. Atrybuty Złożone: 
a. Wyjaśnij różnicę między atrybutem prostym a atrybutem złożonym. 

Podaj przykłady dla obu rodzajów atrybutów. 
###4.	Różnice między Atrybutem Pochodnym a Atrybutem Przechowywanym: 
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
