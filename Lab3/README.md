# Laboratorium 3
## Bazy Danych 1
### mgr. inż. Aleksander Wojtowicz

**Modelowanie pojęciowe** w kontekście baz danych to proces tworzenia abstrakcyjnych reprezentacji rzeczywistych danych i ich relacji. Głównym celem jest stworzenie spójnego i zrozumiałego planu struktury danych, który będzie podstawą dla projektowania bazy danych. Oto kilka kluczowych koncepcji związanych z modelem pojęciowym:

### Encje (Entity):
Encje to konkretne obiekty lub pojęcia, które chcemy reprezentować w bazie danych.
Przykłady encji mogą obejmować klientów, zamówienia, produkty czy pracowników.

### Atrybuty (Attributes):
Atrybuty to cechy lub właściwości encji.
Na przykład, dla encji "Klient" atrybutami mogą być imię, nazwisko, numer telefonu itp.

### Relacje (Relationships):
Relacje określają związki między różnymi encjami w bazie danych.
Przykładowo, zamówienie może być powiązane z klientem poprzez relację "złożone przez".

### Klucze (Keys):
Klucze identyfikują unikalne rekordy w tabelach.
Klucz główny jednoznacznie identyfikuje daną encję, a klucze obce nawiązują relacje między różnymi encjami.

### Diagramy ERD (Entity-Relationship):
Diagramy ERD są graficznym przedstawieniem struktury danych, wykorzystywanym do wizualizacji encji, atrybutów i relacji.
Ułatwiają zrozumienie struktury bazy danych przed jej implementacją.

**Normalizacja** to proces organizowania danych w bazie danych w taki sposób, aby uniknąć nadmiernego powtarzania się informacji. Głównym celem jest zminimalizowanie redundancji danych (powtarzania się informacji), co oznacza, że te same informacje nie są przechowywane wielokrotnie.

Załóżmy, że mamy tabelę klientów i każdy klient ma przypisany kraj. Normalizacja wymagałaby stworzenia osobnej tabeli krajów, a następnie przypisania odpowiednich identyfikatorów krajów klientom. W ten sposób informacja o kraju nie jest powtarzana dla każdego klienta, co oszczędza miejsce i ułatwia zarządzanie danymi.

**Denormalizacja** to przeciwność normalizacji. Oznacza to, że dane są przechowywane w sposób redundantny, ale umożliwia to szybszy dostęp do informacji. Denormalizacja jest używana tam, gdzie szybki dostęp do danych jest bardziej krytyczny niż oszczędność miejsca.

Kontynuując przykład z klientami i krajami, denormalizacja polegałaby na przechowywaniu informacji o kraju bezpośrednio w tabeli klientów, zamiast korzystać z osobnej tabeli krajów. To sprawi, że dostęp do informacji o kraju klienta będzie szybszy, ale może prowadzić do redundancji danych.

**Język Opisu Danych (DDL)** to zestaw instrukcji używanych do definiowania i zarządzania strukturą baz danych. Jest to rodzaj języka SQL (Structured Query Language), który koncentruje się głównie na aspektach związanych z projektem i strukturą bazy danych. DDL obejmuje kilka kluczowych elementów:

### Tworzenie Tabeli (CREATE TABLE): 
DDL pozwala na tworzenie nowych tabel w bazie danych. Tabele są strukturami, które przechowują dane w formie rekordów i kolumn.

### Modyfikacja Struktury Tabeli (ALTER TABLE): 
Jeśli istniejące tabele wymagają zmiany, DDL pozwala na modyfikowanie ich struktury. Na przykład, można dodać nowe kolumny lub zmienić typy danych.

### Usuwanie Tabeli (DROP TABLE): 
Gdy tabela nie jest już potrzebna, można ją usunąć wraz z wszelkimi danymi, które zawiera.

### Klucz Główny (PRIMARY KEY): 
Każda tabela może mieć klucz główny, który jednoznacznie identyfikuje każdy rekord w tabeli. Jest to istotne dla utrzymania unikalności danych.

### Klucz Obcy (FOREIGN KEY): 
DDL pozwala na ustanawianie relacji między tabelami poprzez klucze obce. Klucz obcy wskazuje na klucz główny w innej tabeli, co umożliwia powiązanie danych między nimi.

**Język Manipulowania Danymi (DML)** koncentruje się na operacjach związanych z manipulacją danymi w bazie danych. Oto kluczowe koncepcje związane z DML:

### Dodawanie Danych (INSERT): 
DML umożliwia dodawanie nowych danych do tabel w bazie danych. Na przykład, jeśli chcesz wprowadzić informacje o nowym kliencie do tabeli, używasz instrukcji INSERT.

### Aktualizacja Danych (UPDATE): 
DML pozwala na aktualizację istniejących danych w tabeli. Gdy dane zmieniają się, można użyć instrukcji UPDATE do wprowadzenia odpowiednich modyfikacji.

### Usuwanie Danych (DELETE): 
DML umożliwia usuwanie danych z tabeli. Jeśli na przykład klient przestał korzystać z usług i chcesz usunąć jego dane, używasz instrukcji DELETE.

### Wyszukiwanie Danych (SELECT): 
Choć SELECT jest głównie uważane za instrukcję języka zapytań (Query Language), często jest również traktowane jako część DML. Pozwala ona na pobieranie danych z tabeli, umożliwiając przeglądanie, analizę i raportowanie.

**Transakcja** w kontekście baz danych odnosi się do jednostki operacji, która składa się z jednego lub większej liczby kroków przetwarzania danych. Główną cechą transakcji jest jej atomowość, czyli wykonuje się ona jako jedna niepodzielna jednostka. Innymi słowy, albo cała transakcja zostaje wykonana, albo w ogóle nie.
Podstawowe cechy transakcji obejmują:

### Atomowość (Atomicity): 
Oznacza, że transakcja jest niepodzielna. Wszystkie operacje wchodzące w jej skład muszą być wykonane w całości, lub w ogóle nie. Jeśli jakakolwiek część transakcji zawiedzie, cała transakcja zostanie wycofana (ang. rolled back), a baza danych pozostanie w niezmienionym stanie.

### Spójność (Consistency): 
Transakcja musi przekształcać bazę danych z jednego spójnego stanu w inny spójny stan. To oznacza, że po zakończeniu transakcji baza danych musi znajdować się w poprawnym stanie zgodnym z zdefiniowanymi regułami i ograniczeniami.

### Izolacja (Isolation): 
Transakcje mogą działać równolegle, ale muszą pozostawać izolowane od siebie nawzajem. To oznacza, że wyniki jednej transakcji nie są widoczne dla innych transakcji, dopóki ta pierwsza nie zostanie zakończona.

### Trwałość (Durability): 
Po zakończeniu transakcji jej efekty muszą być trwałe i odporne na awarie systemu. Nawet w przypadku awarii systemu po zakończeniu transakcji, jej efekty powinny pozostać w bazie danych.
Przykłady transakcji mogą obejmować przelanie pieniędzy między kontami bankowymi, aktualizację danych osobowych w bazie klientów, czy też rezerwację miejsc na lot.

**Zarządzanie transakcjami** to kluczowy aspekt w obszarze baz danych. Obejmuje on szereg działań mających na celu zapewnienie niezawodności i spójności operacji przeprowadzanych na danych. Poniżej przedstawiam ogólne koncepcje bez używania kodu:

### Rozpoczęcie Transakcji: 
Transakcję rozpoczyna się, gdy użytkownik zainicjuje pewną operację, która wymaga wykonania wielu kroków. To może obejmować dodawanie, aktualizację lub usuwanie danych.

### Zatwierdzenie (Commit): 
Po pomyślnym zakończeniu wszystkich kroków transakcji, zmiany są "zatwierdzane" i stają się trwałe. Zatwierdzenie oznacza, że system może teraz zaakceptować i utrwalić wprowadzone zmiany.

### Cofnięcie (Rollback): 
W przypadku błędu lub nieprzewidzianego zdarzenia można cofnąć transakcję. To oznacza, że żadne zmiany wprowadzone przez transakcję nie będą miały wpływu na stan bazy danych.

### Izolacja Transakcji: 
Aby uniknąć konfliktów między równoczesnymi transakcjami, systemy baz danych stosują poziomy izolacji. To określa, jak jedna transakcja widzi zmiany wprowadzane przez inne transakcje w trakcie swojego działania.

### Zarządzanie Punktami Zapisu (Savepoints): 
W niektórych systemach można ustawiać punkty zapisu w trakcie transakcji. To umożliwia cofanie się do określonego punktu, jeśli wystąpią problemy, zamiast cofania się do początku transakcji.
### Zarządzanie Trwałością (Durability): 
Po zatwierdzeniu transakcji, zmiany muszą być trwałe i odporne na wszelkie awarie systemu. To zazwyczaj obejmuje zapisywanie zmian na trwałe na dysku.

## Zadania
1. Modelowanie pojęciowe i Bazy Danych:

a. Jakie są główne cele modelowania pojęciowego w kontekście baz danych?

b. Dlaczego klucze są istotne w modelowaniu pojęciowym?

c. W jaki sposób diagramy ERD pomagają w zrozumieniu struktury bazy danych?

2. Język Opisu Danych (DDL):

a. Jakie są kluczowe elementy języka DDL?

b. Co oznacza instrukcja "CREATE TABLE" w języku DDL i jakie są jej zastosowania?

c. Dlaczego klucze główne i obce są ważne przy definiowaniu struktury bazy danych za pomocą DDL?

3. Język Manipulowania Danymi (DML):

a. W jaki sposób instrukcje DML pozwalają na manipulację danymi w bazie danych?

b. Jakie są podstawowe operacje, które można wykonywać za pomocą instrukcji DML?

c. Dlaczego instrukcja "SELECT" jest traktowana zarówno jako część DML, jak i jako część języka zapytań?

4. Transakcje w Bazie Danych:

a. Co oznacza, że transakcja jest atomowa?

b. Jakie są cechy transakcji, takie jak spójność, izolacja i trwałość?

c. Przedstaw przykłady sytuacji, w których transakcje są używane w bazach danych.

5. Zarządzanie Transakcjami:

a. Jak rozpoczyna się transakcję w bazie danych?

b. W jaki sposób system bazy danych zarządza zatwierdzaniem i cofaniem transakcji?

c. Co to jest izolacja transakcji i dlaczego jest ważna w kontekście równoczesnego dostępu do danych?
