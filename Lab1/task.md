# Zadania 
### 1. Definicja Bazy Danych: a. Jak definiujesz bazę danych? 
b. Dlaczego trwałość i zgodność z rzeczywistością są kluczowymi cechami baz danych? 

### 2. Cechy Baz Danych: 
a. Jakie są kluczowe cechy baz danych i dlaczego trwałość jest ważna? 

b. Jakie są korzyści z utrzymywania zgodności z rzeczywistością w bazie danych? 

### 3. Specjalność Bazy Danych: 
a. W jaki sposób operacyjne bazy danych różnią się od analitycznych? 

b. Dlaczego istnieje potrzeba specjalizacji w zarządzaniu różnymi rodzajami informacji? 

### 4. Geneza Relacyjnych Baz Danych: 
a. Co to jest relacyjny model danych? 

b. Jakie są podstawowe założenia postulatów Codda dotyczących relacyjnych baz danych? 

### 5. Podstawowe Założenia RBD – Postulaty Codda: 
a. Jakie są kluczowe postulaty Codda dotyczące relacyjnych baz danych? 

b. Jak wartość NULL przyczynia się do elastyczności w obszarze zarządzania danymi? 

### 6. Systemy Zarządzania Bazami Danych (DBMS): 
a. Jakie są główne zadania, jakie pełnią Systemy Zarządzania Bazami Danych (DBMS)? 

### 7. Przykłady DBMS: 
a. Podaj przykłady zastosowań DBMS w różnych sektorach, takich jak bankowość czy zarządzanie przedsiębiorstwem. 

### 8. Architektura SZBD: 
a. Co obejmuje architektura systemów zarządzania bazami danych? 

b. Dlaczego model klient-serwer jest powszechnie stosowany w tej architekturze? 

### 9. Schemat Architektury Klient-Serwer: 
a. Jakie są główne komponenty architektury klient-serwer? 

b. Jakie zadania wykonuje klient w tej architekturze? 

### 10. Zalety Architektury Klient-Serwer: 
a. Jakie są zalety skalowalności w architekturze klient-serwer? 

b. Dlaczego rozdzielenie zadań między klienta a serwer przyczynia się do efektywności systemu? 






### 1.	Pojęcie Bazy Danych: 
a. Jakie jest Twoje zrozumienie bazy danych?
Baza danych to zorganizowana kolekcja informacji, skonstruowana według modelu przedstawiającego charakterystykę tych danych oraz ich wzajemne zależności. Jest przechowywana, aby skutecznie dostarczać potrzebne informacje. Informacje te są przedstawieniem rzeczywistości, odpowiednio zakodowane do celów komunikacji i analizy.

b. Czemu cechy takie jak trwałość i odwzorowywanie rzeczywistości są tak ważne dla baz danych?
Zasadnicze aspekty to trwałość, czyli długotrwałe zachowanie informacji, oraz odwzorowywanie rzeczywistości, co oznacza aktualizowanie informacji zgodnie z rzeczywistymi zmianami. Te elementy gwarantują wierność i precyzję w przedstawianiu modelowanego fragmentu rzeczywistości.

### 2.	Atrybuty Baz Danych: 
a. Jakie są główne atrybuty baz danych i dlaczego trwałość ma kluczowe znaczenie?
Głównymi atrybutami są trwałość, czyli zachowanie danych na stałe.

b. Jakie korzyści przynosi zachowanie rzetelności danych w bazie?
Rzetelność danych polega na ich aktualizacji w odpowiedzi na zmieniające się otoczenie.

### 3.	Specyfika Bazy Danych: 
a. Jak różnią się bazy danych operacyjne od baz analitycznych?
Bazy operacyjne zarządzają danymi, które regularnie się zmieniają, np. transakcje czy zarządzanie zapasami. Natomiast bazy analityczne skupiają się na przechowywaniu danych historycznych lub statycznych, takich jak wyniki analiz chemicznych. Ta dywersyfikacja pozwala efektywnie administrować różnorodnymi informacjami w firmie.

b. Dlaczego specjalizacja jest kluczowa w administrowaniu różnymi typami informacji?
Jest to niezbędne dla efektywnej organizacji, a specjalizacja Analityczna jest jednym z narzędzi.

### 4.	Początki Relacyjnych Baz Danych: 
a. Na czym polega relacyjny model danych?
Model relacyjny, zaproponowany przez Edgara Codda, opiera się na fundamentach matematycznych z dziedziny teorii zbiorów i logiki. Używa tabel, nazywanych relacjami, do przedstawiania informacji. Został on wprowadzony pod koniec 1960 roku.

b. Jakie są kluczowe elementy postulatów Codda w odniesieniu do relacyjnych baz danych?
Opierają się one na zasadach teorii zbiorów oraz logiki.

### 5.	Główne Postulaty RBD według Codda: 
a. Jakie są główne założenia Codda odnoszące się do relacyjnych baz danych?
Postulaty te obejmują Informacyjny, Dostępu, wartość NULL, Katalog, Język danych, możliwość modyfikacji danych, niezależność fizyczna i logiczna, oraz niezależność operacji niskiego poziomu.

b. W jaki sposób wartość NULL wpływa na elastyczność w zarządzaniu danymi?
Pozwala na reprezentowanie brakujących lub nieznanych wartości, co zwiększa wszechstronność systemu.

### 6.	Systemy Administrowania Bazami Danych (DBMS): 
a. Jakie role pełnią Systemy Administrowania Bazami Danych (DBMS)?
DBMS odgrywają niezbędną rolę w centralizacji, dostępie do wybranych informacji, usuwaniu zbędnych duplikatów, zapewnieniu spójności, standaryzacji oraz ulepszaniu interakcji z danymi. Są one kluczowe w wielu branżach, od sektora bankowego po zarządzanie korporacjami.

### 7.	Zastosowania DBMS: 
a. W jakich obszarach DBMS znajdują zastosowanie, np. w bankowości czy zarządzaniu korporacjami?
DBMS są używane w wielu sektorach, takich jak biblioteki, systemy rezerwacyjne, sektor finansowy, zarządzanie firmami czy rejestracja obywateli.

### 8.	Struktura Systemów Administrowania Bazami Danych: 
a. Co wchodzi w skład architektury systemów administrowania bazami danych?
Struktura takiego systemu obejmuje interakcje pomiędzy jego składnikami w celu efektywnego zarządzania danymi. Popularnym modelem w tej dziedzinie jest architektura oparta na kliencie i serwerze.

b. Dlaczego architektura klient-serwer jest tak często stosowana?
Jest to spowodowane tym, że klient, czy to aplikacja na komputerze, w przeglądarce lub na urządzeniu mobilnym, interaktywnie komunikuje się z bazą danych, tworząc zapytania i przekazując je do serwera. Komunikacja między nimi odbywa się przez sieć, często używając protokołów takich jak TCP/IP.

### 9.	Schemat Architektury Klienta i Serwera: 
a. Jakie elementy składają się na architekturę klient-serwer?
Są to aplikacje stacjonarne, webowe lub mobilne.

b. Jakie funkcje pełni klient w tej strukturze?
Klient tworzy zapytania do bazy, takie jak pobieranie czy modyfikacja danych, i przekazuje je serwerowi do przetworzenia.

### 10.	Korzyści z Architektury Klient-Serwer: 
a. Jakie korzyści płyną z możliwości skalowania w architekturze klient-serwer?
Korzyści to między innymi: zdolność do rozbudowy, dystrybucja obciążenia, łatwość w utrzymaniu i zabezpieczenia.

b. Dlaczego podział obowiązków między klientem a serwerem poprawia wydajność systemu?
Ponieważ klient i serwer wymieniają się informacjami poprzez sieć, wykorzystując różnorodne protokoły, takie jak TCP/IP.
