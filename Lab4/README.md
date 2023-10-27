# Laboratorium 4
## Bazy Danych 1
### mgr. inż. Aleksander Wojtowicz

**Integralność danych** w kontekście baz danych odnosi się do utrzymania spójności, dokładności i poprawności danych przechowywanych w bazie. W przypadku baz danych, integralność obejmuje kilka kluczowych aspektów:

### Ograniczenia Integralności: 
Wykorzystywanie ograniczeń integralności referencyjnej, takich jak klucze obce, które zapewniają spójność między relacjami (tabelami) w bazie danych.

### Unikalność Danych: 
Stosowanie unikalnych indeksów w celu zapobiegania duplikatom danych. Na przykład, unikalne klucze zapewniają, że nie może istnieć więcej niż jedno wystąpienie danego rekordu.

### Sprawdzanie Poprawności Danych: 
Definiowanie reguł sprawdzających poprawność danych, takich jak warunki, które muszą być spełnione, aby dane były akceptowalne (np. zakresy wartości, formaty dat).

### Transakcje Atomowe: 
Wykorzystywanie transakcji w celu zapewnienia, że operacje na bazie danych są atomowe, co oznacza, że są albo w pełni zakończone, albo w ogóle nie mają miejsca, co chroni spójność danych.

### Triggery (Wywoływane Procedury): Ustawianie triggerów, czyli automatycznie aktywowanych procedur w bazie danych, które reagują na określone zdarzenia, np. przed lub po wstawieniu, aktualizacji lub usunięciu danych.
Zabezpieczenia Dostępu: Kontrola dostępu do bazy danych w celu zapobiegania nieautoryzowanym modyfikacjom danych. Uprawnienia użytkowników powinny być odpowiednio skonfigurowane.

### Kopie Bezpieczeństwa i Odtwarzanie: 
Regularne tworzenie kopii zapasowych danych i testowanie procedur odtwarzania, aby zminimalizować ryzyko utraty danych i przywrócenie spójności po ewentualnych awariach.

### Audyt Danych: 
Implementacja mechanizmów audytu, które rejestrują operacje na danych. To ułatwia monitorowanie, identyfikację błędów oraz śledzenie zmian w bazie danych.

### Synchronizacja Danych: 
W przypadku wielu systemów lub replikacji bazy danych, konieczne jest utrzymanie synchronizacji między nimi, aby uniknąć rozbieżności i zapewnić spójność danych.

### Szkolenie Personelu: 
Edukacja personelu związana z korzystaniem z bazy danych, zwracając uwagę na praktyki utrzymania integralności danych, takie jak unikanie modyfikacji danych bez zastosowania właściwych procedur.

Zachowanie integralności danych jest kluczowe dla prawidłowego funkcjonowania aplikacji i systemów opartych na bazach danych. Dzięki właściwym praktykom i narzędziom, administratorzy baz danych mogą skutecznie zarządzać integralnością danych, minimalizując ryzyko błędów, uszkodzeń danych i zagrożeń dla spójności systemu.

**Zarządzanie integralnością danych** w kontekście baz danych jest szczególnie istotne, ponieważ bazy danych są fundamentalnym elementem przechowywania, przetwarzania i udostępniania danych w systemach informatycznych. Oto kilka kluczowych aspektów zarządzania integralnością danych w kontekście baz danych:

### Definiowanie Ograniczeń Integralności: 
Wykorzystanie ograniczeń integralności referencyjnej (np. klucze obce) do zapewnienia spójności między różnymi tabelami w bazie danych.

### Transakcje Atomowe: 
Używanie transakcji atomowych, aby zagwarantować, że operacje na bazie danych są albo w pełni zakończone, albo w ogóle nie mają miejsca, co pomaga w utrzymaniu spójności danych.

### Mechanizmy Wywoływanej Procedury (Triggery): 
Tworzenie triggerów, czyli wywoływanych procedur, które automatycznie reagują na określone zdarzenia w bazie danych, monitorując i kontrolując zmiany.

### Sprawdzanie Unikalności i Integralności Danych: 
Stosowanie unikalnych indeksów, aby zapobiec duplikatom danych, oraz regularne sprawdzanie integralności danych poprzez narzędzia dostępne w systemach zarządzania bazami danych (DBMS).

### Audyt Bazy Danych: 
Wprowadzenie mechanizmów audytu, które rejestrują operacje na bazie danych, umożliwiając identyfikację błędów i monitorowanie działań użytkowników.

### Kopie Bezpieczeństwa i Odtwarzanie: 
Regularne tworzenie kopii zapasowych bazy danych i sprawdzanie, czy procedury odtwarzania działają poprawnie, aby zapobiec utracie danych.

### Zabezpieczenia Dostępu: 
Kontrola dostępu do bazy danych, zapobieganie nieautoryzowanym modyfikacjom danych poprzez odpowiednie zarządzanie uprawnieniami użytkowników.

### Monitoring Wydajności i Integralności: 
Ustawienie systemów monitorowania, które śledzą wydajność baz danych i identyfikują ewentualne problemy z integralnością danych.

### Automatyzacja Zadań Związanych z Integralnością: 
Automatyzacja rutynowych zadań związanych z integralnością danych, takich jak sprawdzanie poprawności danych czy wykonywanie okresowych audytów.

### Szkolenie Personelu: 
Szkolenie personelu administracyjnego i użytkowników bazy danych w zakresie praktyk bezpieczeństwa i integralności danych.

Zarządzanie integralnością danych w bazie danych to proces ciągły, który wymaga uwagi na każdym etapie cyklu życia danych. Implementacja i przestrzeganie najlepszych praktyk w tym zakresie przyczyniają się do utrzymania wysokiej jakości danych, co ma kluczowe znaczenie dla skutecznego funkcjonowania systemów informatycznych opartych na bazach danych.

**Indeksy** w kontekście baz danych są strukturami danych, które przyspieszają procesy wyszukiwania, sortowania i filtrowania danych w tabelach. Są to kluczowe elementy optymalizacji wydajności baz danych. Oto kilka kluczowych koncepcji związanych z indeksami:

### Definicja Indeksu: 
Indeks to struktura danych, która zapewnia szybszy dostęp do danych w tabeli poprzez utworzenie odnośników (wskaźników) między wartościami w kolumnie a fizycznym położeniem rekordów w tabeli.

### Rodzaje Indeksów: 
Istnieje kilka rodzajów indeksów, takich jak indeksy jednokolumnowe, wielokolumnowe, unikalne, klastrowy i nieklastrowy. Każdy z nich ma swoje zastosowanie w zależności od potrzeb i struktury danych.

### Indeksy Jednokolumnowe i Wielokolumnowe: 
Indeks jednokolumnowy obejmuje jedną kolumnę, podczas gdy indeks wielokolumnowy obejmuje więcej niż jedną kolumnę. Indeks wielokolumnowy jest przydatny, gdy zapytania obejmują warunki na kilku kolumnach.

### Indeks Unikalny: 
Indeks unikalny nie pozwala na duplikaty wartości w indeksowanej kolumnie. Jest to przydatne, gdy chcemy zapewnić, że dana kolumna zawiera unikatowe wartości.

### Indeks Klastrowy i Nieklastrowy: 
Indeks klastrowy kontroluje fizyczną organizację danych w tabeli, podczas gdy indeks nieklastrowy przechowuje oddzielny plik indeksów, a dane w tabeli są nieuporządkowane w sposób zależny od indeksu.

### Zalety Indeksów:
• Przyspieszenie zapytań SELECT, ORDER BY, GROUP BY, a także operacji łączenia (JOIN).

• Optymalizacja wydajności dla operacji wyszukiwania i sortowania danych.

• Poprawa efektywności zapytań, zwłaszcza dla dużych zbiorów danych.

### Wady Indeksów:
• Wprowadzenie indeksów może prowadzić do zwiększenia rozmiaru bazy danych.

• Operacje wprowadzania, aktualizacji i usuwania danych mogą stać się wolniejsze, ponieważ indeksy muszą być aktualizowane.

• Nadmiernie wiele indeksów może prowadzić do zjawiska znanego jako "indeksowanie nadmiernego".

### Kiedy Stosować Indeksy: 
Warto stosować indeksy w przypadku tabel o dużej liczbie rekordów i częstych operacjach wyszukiwania.
Wybieraj indeksy zgodnie z typem zapytań, które będą wykonywane na danych.

### Monitorowanie i Utrzymywanie Indeksów: 
Regularne monitorowanie wydajności indeksów i ich aktualizacja w miarę potrzeb.
Unikanie nadmiernego indeksowania, co może prowadzić do utraty wydajności.

Indeksy są kluczowym narzędziem optymalizacji wydajności baz danych, ale ich odpowiedni dobór i zarządzanie są równie ważne. W praktyce decyzja o tym, kiedy i jak stosować indeksy, wymaga zrozumienia konkretnych wymagań aplikacji i rodzaju operacji wykonywanych na danych.

**Optymalizacja** w kontekście baz danych odnosi się do procesu dostosowywania i konfigurowania bazy danych oraz związanych z nią aplikacji w celu osiągnięcia jak najlepszej wydajności, skuteczności i efektywności. Oto kilka kluczowych koncepcji związanych z optymalizacją baz danych:

### Indeksacja: 
Stosowanie odpowiednich indeksów dla często używanych zapytań. Poprawne indeksowanie przyspiesza operacje wyszukiwania i sortowania.

### Normalizacja Danych: 
Korzystanie z zasady normalizacji danych w celu uniknięcia duplikatów i redundancji. Pomaga to w utrzymaniu integralności danych i zapobiega nadmiernemu zużyciu zasobów.

### Denormalizacja Danych: 
W niektórych przypadkach, szczególnie dla operacji odczytu częściej niż zapisu, denormalizacja danych może przyspieszyć zapytania, eliminując konieczność łączenia wielu tabel.

### Optymalizacja Zapytań SQL: 
Sprawdzenie i optymalizacja zapytań SQL poprzez analizę planów wykonawczych, używanie odpowiednich indeksów, unikanie operacji skanowania pełnego i stosowanie indeksów pokrywających.

### Zarządzanie Indeksami: 
Utrzymanie równowagi między ilością indeksów a wydajnością. Nadmierny indexing może prowadzić do spadku wydajności w przypadku częstych operacji aktualizacji danych.

### Cache'owanie i Buforowanie: 
Wykorzystanie mechanizmów buforowania pamięci, takich jak cache'owanie zapytań, aby ograniczyć dostęp do dysku i przyspieszyć operacje odczytu danych.

### Partycjonowanie Tabel: 
Podział dużych tabel na mniejsze partycje w celu zoptymalizowania zarządzania danymi i przyspieszenia operacji związanych z konkretnymi partycjami.

### Monitoring i Profilowanie: 
Używanie narzędzi monitorowania do śledzenia wydajności bazy danych. Profilowanie zapytań i operacji pomaga zidentyfikować obszary wymagające optymalizacji.

### Zarządzanie Pamięcią: 
Skonfigurowanie odpowiednich ustawień pamięci, takich jak rozmiary buforów i pamięci podręcznej, aby zoptymalizować dostęp do danych w pamięci.

### Backup i Odtwarzanie: 
Regularne tworzenie kopii zapasowych bazy danych i testowanie procedur odtwarzania w celu zminimalizowania ryzyka utraty danych.

### Zastosowanie Shardingu: 
W przypadku dużych baz danych, rozważanie technik shardingu, czyli podziału bazy danych na mniejsze fragmenty, co pomaga w równomiernej dystrybucji obciążenia.

### Optymalizacja Struktury Tabel: 
Wybieranie odpowiednich typów danych, minimalizowanie ilości kolumn, optymalizacja indeksów i struktury tabel w celu efektywnego przechowywania danych.

Optymalizacja baz danych jest procesem ciągłym, który wymaga regularnego monitorowania, analizy i dostosowywania do zmieniających się potrzeb i warunków. Warto również zauważyć, że strategie optymalizacyjne mogą się różnić w zależności od rodzaju bazy danych, jej rozmiaru i specyfiki aplikacji korzystającej z tej bazy.

## Zadania
### 1. Integralność Danych:

a. Jakie są główne aspekty integralności danych w bazie danych?

b. W jaki sposób ograniczenia integralności referencyjnej, takie jak klucze obce, wpływają na spójność relacji w bazie danych?

c. Dlaczego stosowanie unikalnych indeksów jest istotne dla zapobiegania duplikatom danych?

### 2. Transakcje Atomowe:

a. W jaki sposób transakcje atomowe przyczyniają się do utrzymania spójności danych w bazie danych?

b. Dlaczego istotne jest, aby operacje na bazie danych były albo w pełni zakończone, albo w ogóle nie miały miejsca?

c. Jakie są korzyści stosowania transakcji w kontekście integralności danych?

### 3. Indeksy:

a. Jakie są główne rodzaje indeksów w bazach danych?

b. W jaki sposób indeks klastrowy różni się od indeksu nieklastrowego?

c. Kiedy należy stosować indeksy, a kiedy mogą wprowadzać niepożądane efekty?

### 4. Optymalizacja Zapytań SQL:

a. Dlaczego optymalizacja zapytań SQL jest istotna dla wydajności baz danych?

b. Jakie są główne kroki w optymalizacji zapytań SQL?

c. Dlaczego unikanie operacji skanowania pełnego może poprawić wydajność zapytań?

### 5. Zarządzanie Indeksami:

a. Jakie są zalety i wady posiadania wielu indeksów w bazie danych?

b. W jaki sposób nadmierny indexing może wpływać na wydajność operacji aktualizacji danych?

c. Jak utrzymać równowagę między ilością indeksów a wydajnością systemu?

### 6. Optymalizacja Struktury Tabel:

a. Dlaczego wybór odpowiednich typów danych ma znaczenie dla optymalizacji baz danych?

b. Jak minimalizacja ilości kolumn może przyczynić się do efektywnego przechowywania danych?

c. W jaki sposób optymalizacja struktury tabel wpływa na wydajność operacji na danych?

### 7. Backup i Odtwarzanie:

a. Dlaczego regularne tworzenie kopii zapasowych bazy danych jest kluczowe dla utrzymania integralności danych?

b. Jakie są kroki przywracania danych z kopii zapasowej, i dlaczego warto je regularnie testować?

c. W jaki sposób procedury związane z backupem i odtwarzaniem pomagają minimalizować ryzyko utraty danych
