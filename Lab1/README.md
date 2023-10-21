# Laboratorium 1 
## Bazy Danych 1 
### mgr. inż. Aleksander Wojtowicz 
 
## Wprowadzenie do baz danych 
### Definicja bazy danych 
Baza danych to strukturalny zbiór danych, zorganizowany według modelu opisującego ich cechy i relacje między nimi. Przechowywana jest w celu efektywnego dostarczania określonych informacji. Dane są reprezentacją informacji z właściwą interpretacją do komunikacji, interpretacji lub przetwarzania. 
 
### Cechy baz danych 
Baza danych reprezentuje fragment rzeczywistości związany z firmą, organizacją lub systemem. Kluczowe cechy to trwałość – długotrwałe przechowywanie danych oraz zgodność z rzeczywistością – aktualizacja danych wraz z ewoluującym kontekstem. Te dwie cechy zapewniają spójność i dokładność w odzwierciedlaniu modelowanego obszaru rzeczywistości. 
 
## Specjalność bazy danych 
### Operacyjne i analityczne bazy danych 
Operacyjne obsługują dynamicznie zmienne dane, takie jak zamówienia czy obsługa magazynowa. Analityczne przechowują dane historyczne, statyczne, np. bazy testów chemicznych. Ta specjalizacja umożliwia efektywne zarządzanie różnymi rodzajami informacji w organizacji. 
 
## Geneza relacyjnych baz danych 
### Relacyjny model danych 
Relacyjny model danych, stworzony przez Edgara Codda, opiera się na regułach matematycznych z teorii mnogości i logiki predykatów. Tabele, nazywane relacjami, są używane do reprezentacji danych, a model ten został wprowadzony pod koniec lat 
60. XX wieku. 
 
## Podstawowe założenia RBD – Postulaty Codda 
### Informacyjny – 

dane reprezentowane jedynie poprzez wartości atrybutów w wierszach tabeli. Oznacza to, że wszystko, co chcemy wiedzieć o danych, musi być zawarte w tabeli. 
 
### Dostępu – 

każda wartość jest dostępna po podaniu tabeli, atrybutu i klucza. 
Umożliwia to precyzyjne określenie, gdzie znajduje się potrzebna informacja. 
 
### Wartość NULL – 

dla reprezentacji wartości nieokreślonej. Pozwala na obsługę brakujących danych, co zwiększa elastyczność. 
 
### Katalog – 

struktura bazy dostępna w katalogu będącym RBD. Katalog zawiera informacje o strukturze bazy, co ułatwia zarządzanie danymi. 
 
### Język danych – 

system musi dostarczać pełnego języka przetwarzania danych. To zapewnia spójność i jednolitość operacji na danych. 
 
### Modyfikowalność perspektyw –

możliwość modyfikacji sposobu, w jaki dane są widziane przez różne perspektywy. Pozwala na dostosowanie prezentacji danych do różnych potrzeb. 
 
### Modyfikowalność danych (INSERT, UPDATE, DELETE) – możliwość wprowadzania, aktualizacji i usuwania danych. To umożliwia dynamiczną adaptację bazy do zmieniających się potrzeb. 
 
### Fizyczna niezależność danych – 

zmiany fizycznej reprezentacji danych i organizacji dostępu nie wpływają na aplikacje. Zapewnia to elastyczność w zarządzaniu infrastrukturą. 
 
### Logiczna niezależność danych – 

zmiany wartości w tabelach nie wpływają na aplikacje. To umożliwia zmiany w strukturze danych bez konieczności modyfikacji programów. 
 
### Niezależność więzów spójności –

więzy spójności nie zależą od aplikacji. Zapewniają integralność danych niezależnie od operacji. 
 
### Niezależność dystrybucyjna – 

działanie aplikacji nie zależy od modyfikacji dystrybucji bazy. Ułatwia to skalowanie i dostosowywanie bazy do różnych środowisk. 
 
### Bezpieczeństwo względem operacji niskiego poziomu – 

operacje na poziomie rekordu nie mogą naruszać modelu relacyjnego i więzów spójności. To zabezpiecza integralność danych. 
 
## Systemy Zarządzania Bazami Danych (DBMS) 
### Zadania DBMS 
Systemy zarządzania bazami danych pełnią kluczową rolę w centralizacji, selektywnym dostępie, eliminacji redundancji, zapewnianiu spójności i integralności, standaryzacji oraz optymalizacji pracy z danymi. Są one niezbędne w różnych dziedzinach, od bankowości po zarządzanie przedsiębiorstwem. 
 
### Przykłady DBMS 
DBMS znalazły zastosowanie w różnych sektorach, takich jak biblioteki, systemy rezerwacji, bankowość, zarządzanie przedsiębiorstwem czy ewidencja ludności. 
 
### Architektura SZBD 
Architektura systemów zarządzania bazami danych (SZBD) obejmuje sposób, w jaki komponenty systemu współpracują ze sobą, aby efektywnie zarządzać danymi. Jednym z powszechnie stosowanych modeli architektury w tym kontekście jest architektura klient-serwer. 

### Schemat Architektury Klient-Serwer 
*Klient* 
### Interfejs użytkownika:
Klient to aplikacja (np. desktopowa, internetowa lub mobilna), umożliwiająca interakcję z bazą danych. 
 
### Zapytania i żądania: 
Klient generuje zapytania do bazy danych, takie jak pobieranie, aktualizacja, wstawianie lub usuwanie danych, i przesyła je do serwera baz danych. 
 
*Sieć / Internet* 
### Łączność: 
Klient i serwer komunikują się za pomocą sieci (lokalnej lub globalnej w przypadku aplikacji internetowych), wykorzystując różne protokoły, np. TCP/IP. 
 
*Serwer Bazy Danych*
### Zarządzanie danymi: 
Serwer baz danych zawiera silnik bazodanowy, który przetwarza zapytania, zarządza danymi i utrzymuje integralność danych. 
 
### Silnik bazodanowy: 
Oprogramowanie odpowiedzialne za interpretację zapytań SQL, zarządzanie transakcjami, optymalizację zapytań i kontrolę dostępu do danych. 
 
### Zarządzanie transakcjami: 
Serwer obsługuje transakcje, czyli logiczne jednostki pracy, zapewniające atomowość, spójność, izolację i trwałość danych (ACID). 
 
Baza Danych 
### Składowanie danych: 
Baza danych na serwerze przechowuje faktyczne dane w tabelach i relacjach, zgodnie z modelem relacyjnym lub innym modelem danych. 
 
 
*Zalety Architektury Klient-Serwer*
### Skalowalność: 
Dzięki rozdzieleniu funkcji klienta i serwera, system jest bardziej skalowalny, umożliwiając dodawanie nowych klientów bez modyfikacji struktury serwera. 
 
### Rozproszenie zadań: 
Klient i serwer wykonują różne zadania, co optymalizuje wydajność i efektywniejsze wykorzystuje zasoby. 
 
### Łatwa konserwacja: 
Aktualizacje i naprawy mogą być łatwo wprowadzane po stronie klienta lub serwera, bez wpływu na drugą stronę. 
 
### Bezpieczeństwo: 
Serwer zarządza dostępem do danych, zapewniając lepsze zabezpieczenia systemu. Architektura klient-serwer jest powszechnie stosowana w systemach zarządzania bazami danych, ze względu na elastyczność, skalowalność i efektywność w środowisku sieciowym. 
 
 
 
 
 
 
 
 
 
 
 
 
## Zadania 
1.	Definicja Bazy Danych:
   
 a.	Jak definiujesz bazę danych? 
 
 b.	Dlaczego trwałość i zgodność z rzeczywistością są kluczowymi cechami baz danych? 
 
2.	Cechy Baz Danych:
   
 a.	Jakie są kluczowe cechy baz danych i dlaczego trwałość jest ważna? 
 
 b.	Jakie są korzyści z utrzymywania zgodności z rzeczywistością w bazie danych? 
 
3.	Specjalność Bazy Danych: 

 a.	W jaki sposób operacyjne bazy danych różnią się od analitycznych? 
 
 b.	Dlaczego istnieje potrzeba specjalizacji w zarządzaniu różnymi rodzajami informacji? 
 
4.	Geneza Relacyjnych Baz Danych: 

 a.	Co to jest relacyjny model danych? 
 
 b.	Jakie są podstawowe założenia postulatów Codda dotyczących relacyjnych baz danych? 
 
5.	Podstawowe Założenia RBD – Postulaty Codda: 

 a.	Jakie są kluczowe postulaty Codda dotyczące relacyjnych baz danych? 
 
 b.	Jak wartość NULL przyczynia się do elastyczności w obszarze zarządzania danymi? 
 
6.	Systemy Zarządzania Bazami Danych (DBMS): 

 a.	Jakie są główne zadania, jakie pełnią Systemy Zarządzania Bazami Danych (DBMS)? 
 
7.	Przykłady DBMS:
    
 a.	Podaj przykłady zastosowań DBMS w różnych sektorach, takich jak bankowość czy zarządzanie przedsiębiorstwem. 
 
8.	Architektura SZBD:
    
 a.	Co obejmuje architektura systemów zarządzania bazami danych? 
 
 b.	Dlaczego model klient-serwer jest powszechnie stosowany w tej architekturze? 
 
9.	Schemat Architektury Klient-Serwer:
    
 a.	Jakie są główne komponenty architektury klient-serwer? 
 
 b.	Jakie zadania wykonuje klient w tej architekturze? 
 
10.	Zalety Architektury Klient-Serwer:
    
 a.	Jakie są zalety skalowalności w architekturze klient-serwer? 
 
 b.	Dlaczego rozdzielenie zadań między klienta a serwer przyczynia się do efektywności systemu? 
