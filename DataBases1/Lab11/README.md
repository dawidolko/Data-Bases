# Laboratorium 11
## Bazy Danych 1
### mgr. inż. Aleksander Wojtowicz

Transakcje w SQL to sekwencje jednego lub wielu poleceń, które są wykonywane jako jedna logiczna operacja. Transakcje są używane do zapewnienia spójności i integralności danych w bazie danych. W przypadku błędu w trakcie transakcji, można ją cofnąć (ROLLBACK), a jeśli wszystko jest w porządku, można ją zatwierdzić (COMMIT).

`COMMIT`: Służy do potwierdzenia zmian dokonanych w trakcie transakcji. Po wydaniu polecenia COMMIT, wszystkie zmiany stają się trwałe i nieodwracalne. 

```
BEGIN; -- Rozpoczęcie transakcji -- Operacje na bazie danych
COMMIT; -- Potwierdzenie zmian
```

`ROLLBACK`: Służy do cofnięcia zmian dokonanych w trakcie transakcji. Jeśli wystąpił błąd lub coś poszło nie tak, można użyć ROLLBACK, aby przywrócić bazę danych do stanu przed rozpoczęciem transakcji. 

```
BEGIN; -- Rozpoczęcie transakcji -- Operacje na bazie danych
ROLLBACK; -- Cofnięcie zmian
```

Dodawanie danych z transakcją: 

```
BEGIN;
INSERT INTO Tabela (Kolumna1, Kolumna2) VALUES (Wartość1, Wartość2);
COMMIT; -- Potwierdzenie zmian
```

Aktualizacja danych z transakcją: 

```
BEGIN; UPDATE Tabela SET Kolumna = NowaWartość WHERE Warunek;
COMMIT; -- Potwierdzenie zmian
```

Usuwanie danych z transakcją: 

```
BEGIN; DELETE FROM Tabela WHERE Warunek;
COMMIT; -- Potwierdzenie zmian
```

Obsługa błędów i cofanie transakcji: 

```
-- Rozpoczęcie transakcji
BEGIN;

BEGIN -- Operacje na bazie danych -- Potwierdzenie zmian
COMMIT;
EXCEPTION -- Obsługa błędów
WHEN OTHERS THEN -- Cofnięcie zmian w przypadku błędu
ROLLBACK; END;
```

Dodanie nowego klienta i produktu w ramach jednej transakcji: 

```
-- Rozpoczęcie transakcji
BEGIN;
-- Dodanie nowego klienta
INSERT INTO sklep_internetowy.klienci (IDKlienta, Imie, Nazwisko, Email) VALUES (5, 'Sophie', 'Johnson', 'sophie@example.com');
-- Dodanie nowego produktu
INSERT INTO sklep_internetowy.produkty (IDProduktu, NazwaProduktu, Cena) VALUES (107, 'Klawiatura', 50.00);
-- Zakończenie transakcji
COMMIT;
```

Aktualizacja ceny i nazwy produktu w ramach jednej transakcji: 

```
-- Rozpoczęcie transakcji
BEGIN;
-- Aktualizacja ceny produktu o ID 103
UPDATE sklep_internetowy.produkty SET Cena = 90.00 WHERE IDProduktu = 103;
-- Aktualizacja nazwy produktu o ID 103 UPDATE sklep_internetowy.produkty SET NazwaProduktu = 'Nowe Słuchawki' WHERE IDProduktu = 103;
-- Zakończenie transakcji
COMMIT;
```

Usunięcie klienta i jego zamówień w ramach jednej transakcji: 

```
-- Rozpoczęcie transakcji
BEGIN;
-- Usunięcie klienta o ID 5
DELETE FROM sklep_internetowy.klienci WHERE IDKlienta = 5;
-- Usunięcie zamówień tego klienta
DELETE FROM sklep_internetowy.zamowienia WHERE IDKlienta = 5;
-- Zakończenie transakcji
COMMIT;
```

Dodawanie nowego klienta z obsługą wyjątku dla istniejącego adresu e-mail:

```
-- Deklaracja zmiennej na potrzeby przechwycenia wyjątku
DO $$ DECLARE IstniejacyEmail INT;
BEGIN
-- Przeszukaj bazę danych w poszukiwaniu podanego emaila
SELECT COUNT(*) INTO IstniejacyEmail FROM sklep_internetowy.klienci WHERE Email = 'nowy@example.com';
-- Jeśli istnieje klient o podanym emailu, generuj wyjątek
IF IstniejacyEmail > 0 THEN RAISE EXCEPTION 'Podany email już istnieje w bazie danych.';
END IF;
-- Jeśli nie ma takiego emaila, dodaj nowego klienta
INSERT INTO sklep_internetowy.klienci (IDKlienta, Imie, Nazwisko, Email) VALUES (5, 'Nowy', 'Klient', 'nowy@example.com');
-- Potwierdzenie udanej operacji RAISE NOTICE 'Dodano nowego klienta.';
END $$;
```

`RAISE NOTICE` Wysyła wiadomość informacyjną.

`DECLARE`: Deklaruje zmienną przed jej użyciem w kodzie.

`DO ...END`: Obejmuje blok kodu, umożliwiając grupowanie wielu instrukcji.

`RAISE EXCEPTION`
:
Wywołuje błąd, zatrzymując wykonanie kodu w przypadku nieprzewidzianych sytuacji.

`IF`, `END` `IF`:

Kieruje wykonanie kodu w zależności od spełnienia określonego warunku.

# Zadania

## 1. Dodawanie nowego zamówienia z kilkoma pozycjami:
### 1.1. Rozpocznij transakcję.
### 1.2. Dodaj nowe zamówienie dla istniejącego klienta (np. IDKlienta = 1) w tabeli "Zamowienia".
### 1.3. Dodaj kilka pozycji do nowego zamówienia (np. produkt o IDProduktu = 102 i ilość 2, produkt o IDProduktu = 104 i ilość 1).
### 1.4. Zakończ transakcję.

## 2. Usuwanie zamówień i pozycji zamówienia starszych niż 7 dni:
### 2.1. Rozpocznij transakcję.
### 2.2. Usuń zamówienia z tabeli "Zamowienia" i ich pozycje z tabeli "PozycjeZamowienia", które są starsze niż 7 dni.
### 2.3. Zakończ transakcję.

## 3. Aktualizacja nazwy klienta i jego e-maila w ramach jednej transakcji
### 3.1. Rozpocznij transakcję.
### 3.2. Aktualizuj nazwę klienta o ID 2 na "Alicja Nowak" oraz e-mail na 'alicja.nowak@example.com'.
### 3.3. Zakończ transakcję.

## 4. Usunięcie wszystkich zamówień danego klienta i jego danych z tabeli klientów w ramach jednej transakcji
### 4.1. Rozpocznij transakcję.
### 4.2. Usuń wszystkie zamówienia klienta o IDKlienta = 2 z tabeli "Zamowienia".
### 4.3. Usuń klienta o IDKlienta = 2 z tabeli "Klienci".
### 4.4. Zakończ transakcję.
