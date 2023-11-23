# Laboratorium 6 
## Bazy Danych 1 
### mgr. inż. Aleksander Wojtowicz 
 
**SELECT** (Wybieranie danych) 
```
-- Wybierz wszystkie kolumny z tabeli klienci 
SELECT * FROM sklep_internetowy.klienci; 
 
-- Wybierz konkretne kolumny z tabeli produkty 
SELECT NazwaProduktu, Cena FROM sklep_internetowy.produkty; 
 
-- Wybierz dane z tabeli zamowienia, gdzie IDKlienta=1 
SELECT * FROM sklep_internetowy.zamowienia WHERE IDKlienta 
= 1; 
 
-- Wybierz klientów o nazwisku 'Smith': 
SELECT * FROM sklep_internetowy.klienci WHERE Nazwisko = 
'Smith'; 
 
-- Wybierz produkty droższe niż 500 zł: 
SELECT * FROM sklep_internetowy.produkty WHERE Cena > 
500.00; 
 
-- Znajdź zamówienia złożone między 2023-01-15 a 2023-01-
17: 
SELECT * FROM sklep_internetowy.zamowienia WHERE 
DataZamowienia BETWEEN '2023-01-15' AND '2023-01-17';  
-- Znajdź klientów, których imię zaczyna się od litery 
'A': 
SELECT * FROM sklep_internetowy.klienci WHERE Imie LIKE 
'A%'; 
 
-- Wybierz produkty o cenie pomiędzy 50 zł a 200 zł: SELECT * FROM sklep_internetowy.produkty WHERE Cena BETWEEN 50.00 AND 200.00;
```

**WHERE**: Jest to klauzula używana do filtrowania wyników zapytania. Określa warunek, który musi zostać spełniony, aby dany rekord został uwzględniony w wynikach. 
 
**BETWEEN AND**: To operator, który służy do wybierania danych w określonym przedziale.  

*Na przykład, w kontekście dat, możemy użyć BETWEEN '2023-01-15' AND '2023-01-17', aby wybrać wszystkie dane z okresu między 15 stycznia 2023 roku a 17 stycznia 2023 roku.*

**LIKE**: To operator używany do dopasowywania wzorców w danych tekstowych. 
Możemy użyć go z wildcardami. 
 
 **Wildcardy** to specjalne symbole używane w połączeniu z operatorem LIKE w zapytaniach SQL, aby dopasować wzorce w danych tekstowych.  
 
Oto kilka przykładów wildcardów: 
 
**%**: Odpowiada dowolnej liczbie znaków (w tym brak znaków) w danym miejscu. 
Przykład: LIKE 'A%' dopasuje dane, które zaczynają się od litery 'A'.  
Na przykład, dopasuje "Anna", "Adam" czy "Artykuły". 
 
 
**_** : Odpowiada dokładnie jednemu znakowi. 
Przykład: LIKE '_mit' dopasuje słowo zaczynające się od dowolnego znaku, a potem kończące się "mit".  
Na przykład, dopasuje "Amit", "Bmit", czy "Cmit". 
 
 
**[]**: Odpowiada jednemu z pojedynczych znaków w danym miejscu. 
Przykład: LIKE '[ABC]%' pasuje do danych, które zaczynają się od litery 'A', 'B' lub 'C'.  
Na przykład, dopasuje "A123", "Babcia", czy "Cde". 
 
Przykład: LIKE '[^ABC]%' pasuje do danych, które nie zaczynają się od litery 'A', 'B' lub 'C'. 
Na przykład, dopasuje "D456", "Xyz", czy "123". 
 
 **INSERT** (Dodawanie danych) 
 ```
-- Dodaj nowego klienta do tabeli Klienci 
INSERT INTO sklep_internetowy.klienci (IDKlienta, Imie, 
Nazwisko, Email) VALUES (5, 'Anna', 'Kowalska', 
'anna@example.com'); 
 
-- Dodaj nowy produkt do tabeli Produkty 
INSERT INTO sklep_internetowy.produkty (IDProduktu, 
NazwaProduktu, Cena) VALUES (107, 'Klawiatura', 50.00); 
 
-- Dodaj nowego klienta 
INSERT INTO sklep_internetowy.klienci (IDKlienta, Imie, 
Nazwisko, Email) VALUES (6, 'Jan', 'Nowak', 
'jan@example.com'); 
 
-- Dodaj nowy produkt 
INSERT INTO sklep_internetowy.produkty (IDProduktu, 
NazwaProduktu, Cena) VALUES (108, 'Głośniki', 120.00); 
 
-- Dodaj nowe zamówienie 
INSERT INTO sklep_internetowy.zamowienia (IDZamowienia, 
IDKlienta, DataZamowienia) VALUES (505, 5, '2023-01-20 
09:15:00'); 
 
-- Dodaj nową pozycję zamówienia 
INSERT INTO sklep_internetowy.pozycjeZamowienia 
(IDPozycjiZamowienia, IDZamowienia, IDProduktu, Ilosc) 
VALUES (7, 505, 108, 2);
```
 
Na przykładzie: 
```
-- Dodaj nowego klienta do tabeli Klienci 
INSERT INTO sklep_internetowy.klienci (IDKlienta, Imie, 
Nazwisko, Email) VALUES (7, 'Agata', 'Kowalska', 
'agata@example.com');
```
 
•	**INSERT INTO** Wstawia dane do tabeli. 

•	**(IDKlienta, Imie, Nazwisko, Email)** Wskazuje, do których kolumn wprowadzamy dane. Kolejność odpowiada kolumnom w tabeli "Klienci". 

•	**VALUES (7, 'Agata', 'Kowalska', 'anna@example.com)**: Określa konkretne wartości, które dodajemy do odpowiednich kolumn: 

  o **IDKlienta**: 7 o Imie: Agata o Nazwisko: Kowalska o Email: agata@example.com 
  o **Imie**: Agata
  o **Nazwisko**: Kowalska
  o **Email**: agata@example.com

**DELETE** (Usuwanie danych) 
```
-- Usuń rekordy z tabeli "pozycjezamowienia", które odwołują się do zamówienia o IDZamowienia=505 DELETE FROM sklep_internetowy.pozycjezamowienia WHERE idzamowienia = 505; 
 
-- Następnie możesz usunąć zamówienie o IDZamowienia=505 
DELETE FROM sklep_internetowy.zamowienia WHERE 
IDZamowienia = 505; 
 
-- Usuń produkt o IDProduktu=108 
DELETE FROM sklep_internetowy.produkty WHERE IDProduktu = 
108; 
 
-- Usuń klienta o IDKlienta=8 
DELETE FROM sklep_internetowy.klienci WHERE IDKlienta = 8;
```
**DELETE FROM sklep_internetowy.klienci**: Wskazuje, z której tabeli usuwamy dane. WHERE IDKlienta = 8: Określa warunek, który musi być spełniony, aby usunąć konkretne dane. 
 
**WHERE IDKlienta = 8**: Określa warunek, który musi być spełniony, aby usunąć konkretne dane.
 
**UPDATE** (Aktualizowanie danych) 
```
-- Aktualizuj nazwę produktu dla IDProduktu=101 
UPDATE sklep_internetowy.Produkty SET NazwaProduktu = 
'Nowy Laptop' WHERE IDProduktu = 101; 
 
-- Zmiana adresu email dla klienta o IDKlienta=2 
UPDATE sklep_internetowy.Klienci SET Email = 'alice.new@example.com' WHERE IDKlienta = 2; 
 
-- Aktualizuj cenę produktu o IDProduktu=105 
UPDATE sklep_internetowy.Produkty SET Cena = 350.00 WHERE 
IDProduktu = 105; 
 
-- Zmiana ilości produktu w pozycji zamówienia o 
IDPozycjiZamowienia=1 
UPDATE sklep_internetowy.PozycjeZamowienia SET Ilosc = 3 
WHERE IDPozycjiZamowienia = 1; 
 
-- Aktualizuj datę zamówienia o IDZamowienia=501 
UPDATE sklep_internetowy.Zamowienia SET DataZamowienia = 
'2023-01-15 11:00:00' WHERE IDZamowienia = 501;
```
**UPDATE sklep_internetowy.produkty**: Wskazuje, która tabela zostanie zaktualizowana. 

**SET NazwaProduktu = 'Nowy Laptop'**: Określa, co dokładnie zostanie zaktualizowane. 

**WHERE IDProduktu = 101**: Określa warunek, który musi być spełniony, aby zaktualizować konkretne dane. 
 
### Zadania 
Przetestuj wszystkie komendy z laboratorium, następnie na ich podstawie wykonaj poniższe zadania. 
 
**Zadanie 1**:  
Wybierz nazwiska, imiona oraz adresy e-mail klientów, których nazwiska zaczynają się na literę K. 
 
**Zadanie 2**:  
Dodaj nowego klienta o imieniu 'Marcin', nazwisku 'Nowak' i adresie email 
'marcin@example.com'. 
 
**Zadanie 3**:  
Zaktualizuj cenę produktu 'Laptop' na 1300.00 zł: 
 
**Zadanie 4**:  
Wybierz produkty o nazwach zaczynających się na literę 'S'. 
 
**Zadanie 5**:  
Dodaj nowe zamówienie dla klienta o IDKlienta=6 z datą '2023-11-06 09:30:00'. 
 
**Zadanie 6**:  
Usuń klienta Marcina Nowaka (pamiętaj najpierw o usunięciu powiązanych zamówień). 
 
**Zadanie 7**:  
Znajdź najdroższy produkt w tabeli 'produkty'. 

Użyj ORDER BY: Aby posortować wyniki według konkretnej kolumny, użyj ORDER BY.  

W tym przypadku chcemy posortować po cenie, więc użyj ORDER BY Cena. 

Użyj DESC: Aby posortować malejąco, ORDER BY Cena DESC. Rosnąco byłoby ASC. 

Użyj LIMIT: Aby ograniczyć wyniki do jednego, użyj LIMIT 1. 
 
