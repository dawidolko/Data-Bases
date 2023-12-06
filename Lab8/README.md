# Laboratorium 8 
## Bazy Danych 1 
### mgr. inż. Aleksander Wojtowicz 
 
 
Podzapytania w SQL to nic innego jak zapytania umieszczone wewnątrz innego zapytania. Są one używane w celu uzyskania dodatkowych informacji lub filtracji wyników głównego zapytania. Oto kilka przykładów: 
 
Podzapytanie w klauzuli WHERE do pobrania danych o zamówieniach dla konkretnego klienta: 
```sql
SELECT * FROM sklep_internetowy.Zamowienia WHERE IDKlienta 
= (SELECT IDKlienta FROM sklep_internetowy.Klienci WHERE 
Imie = 'John');
```
To zapytanie pokazuje wszystkie zamówienia złożone przez klienta o imieniu `'John'`, korzystając z identyfikatora klienta uzyskanego w wewnętrznym zapytaniu. 
 
 
Podzapytanie w klauzuli WHERE z użyciem IN do pobrania produktów z konkretnego zamówienia: 
```sql
SELECT * FROM sklep_internetowy.Produkty WHERE IDProduktu IN (SELECT IDProduktu FROM 
sklep_internetowy.PozycjeZamowienia WHERE IDZamowienia = 
502);
```
To zapytanie pokazuje produkty zamówione w zamówieniu o numerze `502`. Wewnętrzne zapytanie dostarcza `IDProduktu` dla tego zamówienia, a zewnętrzne zapytanie używa tych ID do wybrania pełnych informacji o produktach. 
 
 
Podzapytanie z użyciem EXISTS w klauzuli WHERE do sprawdzenia, czy klient dokonał zakupów: 
```sql
SELECT * FROM sklep_internetowy.Klienci WHERE EXISTS 
(SELECT 1 FROM sklep_internetowy.Zamowienia WHERE 
IDKlienta = Klienci.IDKlienta);
```
To pytanie pokazuje dane o klientach, którzy złożyli przynajmniej jedno zamówienie. 

Wewnętrzne zapytanie sprawdza, czy dany klient ma jakiekolwiek zamówienie. 

Podzapytanie w klauzuli `FROM` do pobrania średniej wartości zamówienia dla każdego klienta: 
```sql
SELECT Imie, Nazwisko, (SELECT AVG(Cena * Ilosc) FROM sklep_internetowy.PozycjeZamowienia JOIN 
sklep_internetowy.Produkty ON PozycjeZamowienia.IDProduktu = Produkty.IDProduktu WHERE IDKlienta = Klienci.IDKlienta) 
AS SredniaWartoscZamowienia FROM sklep_internetowy.Klienci;
```
To zapytanie przekazuje imię, nazwisko i średnią wartość zamówienia dla każdego klienta. Wewnętrzne podzapytanie oblicza średnią wartość zamówienia dla konkretnego klienta, a zewnętrzne zapytanie wybiera `imię`, `nazwisko` i `obliczoną średnią`. 
 
Podzapytanie w klauzuli `WHERE` z użyciem `NOT EXISTS` do znalezienia klientów, którzy nie dokonali żadnych zakupów: 
```sql
SELECT * FROM sklep_internetowy.Klienci WHERE NOT EXISTS 
(SELECT 1 FROM sklep_internetowy.Zamowienia WHERE 
IDKlienta = Klienci.IDKlienta);
```
To zapytanie zwraca klientów, którzy nie dokonali jeszcze żadnych zakupów. Wewnętrzne podzapytanie sprawdza, czy nie istnieje żadne zamówienie dla danego 
klienta. 
 
Podzapytanie w klauzuli WHERE z użyciem ANY do znalezienia produktów tańszych niż średnia cena produktów:
```sql
SELECT * FROM sklep_internetowy.Produkty WHERE Cena < ANY 
(SELECT AVG(Cena) FROM sklep_internetowy.Produkty);
```
To zapytanie wybiera produkty, których cena jest niższa niż średnia cena wszystkich produktów. Wewnętrzne podzapytanie oblicza średnią cenę produktów, a zewnętrzne zapytanie wybiera produkty tańsze niż uzyskana średnia. 
 
Podzapytanie w klauzuli `HAVING` do znalezienia klientów z co najmniej jednym zamówieniem: 
```sql
SELECT IDKlienta, COUNT(*) as LiczbaZamowien FROM sklep_internetowy.Zamowienia GROUP BY IDKlienta HAVING 
COUNT(*) >= 1;
```
To zapytanie zwraca ID klientów, którzy dokonali co najmniej jednego zamówienia. Klauzula `HAVING` ogranicza wyniki do tych klientów, którzy spełniają warunek co najmniej jednego zamówienia. 
 
Podzapytanie z użyciem `JOIN` w klauzuli `WHERE` do pobrania danych o klientach i ich zamówieniach: 
```sql
SELECT Klienci.Imie, Klienci.Nazwisko, 
Zamowienia.DataZamowienia FROM sklep_internetowy.Klienci 
JOIN sklep_internetowy.Zamowienia ON Klienci.IDKlienta = 
Zamowienia.IDKlienta;
```
To zapytanie zwraca `imię`, `nazwisko` i `datę zamówienia` dla każdego klienta, który dokonał przynajmniej jednego zamówienia. Wykorzystuje klauzulę `JOIN` do połączenia danych z tabeli `Klienci` i `Zamówienia`. 
 
Podzapytanie w klauzuli `WHERE` do znalezienia zamówień z produktem o nazwie `'Laptop'`: 
```sql
SELECT * FROM sklep_internetowy.Zamowienia WHERE IDZamowienia IN (SELECT IDZamowienia FROM sklep_internetowy.PozycjeZamowienia JOIN 
sklep_internetowy.Produkty ON PozycjeZamowienia.IDProduktu 
= Produkty.IDProduktu WHERE NazwaProduktu = 'Laptop');
```
To zapytanie zwraca wszystkie zamówienia, które zawierają produkt o nazwie `'Laptop'`.
Wewnętrzne podzapytanie wybiera IDZamowienia dla pozycji zamówienia zawierającej `'Laptop'`, a zewnętrzne zapytanie używa tych ID do wybrania pełnych informacji o tych zamówieniach. 
 
`HAVING`: Filtruje wyniki grupowania na podstawie warunku, podobnie jak `WHERE`, ale stosowane do grupowania. 
 
`NOT EXISTS`: Sprawdza, czy podzapytanie nie zwraca żadnych wierszy.  
Zwraca `TRUE`, jeśli nie ma dopasowania. 
 
`IN`: Sprawdza, czy wartość znajduje się w zbiorze wartości określonym przez podzapytanie lub listę. 
 
`ANY`: Porównuje wartość z dowolnym elementem z wyników podzapytania.  
Zwraca `TRUE`, jeśli przynajmniej jedno porównanie jest prawdziwe. 
 
## Zadania 
### 1.	Znajdź klientów, którzy dokonali zakupów produktu o nazwie 'Tablet'. 
### 2.	Znajdź produkty, których cena jest wyższa niż średnia cena produktów. 
### 3.	Znajdź klientów, którzy dokonali zakupów za kwotę przekraczającą 1000 zł. 
### 4.	Znajdź klientów, którzy nie dokonali jeszcze żadnych zakupów. 
### 5.	Znajdź zamówienia, w których każdy produkt kosztuje więcej niż 50 zł. 
### 6.	Znajdź klientów, którzy dokonali zakupów za pomocą podzapytania z JOIN. 
### 7.	Znajdź klientów, którzy dokonali przynajmniej jednego zamówienia. 
### 8.	Znajdź produkty tańsze niż średnia cena produktów, ale droższe niż 30 zł. 
### 9.	Znajdź zamówienia z co najmniej dwoma pozycjami. 
### 10.	Znajdź klientów, którzy dokonali zakupów w 2023 roku. 
