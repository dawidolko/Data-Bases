# Laboratorium 10 
### Bazy Danych 1 
### mgr. inż. Aleksander Wojtowicz 
 
 Widok to wirtualna tabela, która jest wynikiem wykonania zapytania na jednej lub wielu istniejących tabelach. Widoki pozwalają na abstrakcję i
uproszczenie złożonych zapytań, umożliwiając łatwiejsze i bardziej elastyczne korzystanie z danych. 
 
 
 
Informacje o zamówieniach z produktami 

```sql
CREATE VIEW sklep_internetowy.informacje_o_zamowieniach AS
SELECT 
    z.IDZamowienia, 
    z.IDKlienta, 
    k.Imie || ' ' || k.Nazwisko AS Klient, 
    z.DataZamowienia, 
    p.NazwaProduktu, 
    pz.Ilosc FROM     sklep_internetowy.zamowienia z JOIN 
    sklep_internetowy.klienci k ON z.IDKlienta = 
k.IDKlienta JOIN 
    sklep_internetowy.pozycjeZamowienia pz ON 
z.IDZamowienia = pz.IDZamowienia JOIN 
    sklep_internetowy.produkty p ON pz.IDProduktu = 
p.IDProduktu;
```
 
Widok ten zawiera informacje o zamówieniach, obejmując klienta, datę zamówienia oraz produkty w danym zamówieniu. 
 
Łączna wartość zamówień dla każdego klienta 

```sql
CREATE VIEW sklep_internetowy.wartosc_zamowien_klientow AS
SELECT 
    z.IDKlienta, 
    k.Imie || ' ' || k.Nazwisko AS Klient,     SUM(p.Cena * pz.Ilosc) AS WartoscZamowien FROM 
    sklep_internetowy.zamowienia z JOIN 
    sklep_internetowy.klienci k ON z.IDKlienta = 
k.IDKlienta JOIN 
    sklep_internetowy.pozycjeZamowienia pz ON 
z.IDZamowienia = pz.IDZamowienia JOIN 
    sklep_internetowy.produkty p ON pz.IDProduktu = 
p.IDProduktu 
GROUP BY 
    z.IDKlienta, Klient; 
 ```

Widok ten pokazuje łączną wartość zamówień dla każdego klienta. 
 
Najnowsze zamówienia 

```sql
CREATE VIEW sklep_internetowy.najnowsze_zamowienia AS 
SELECT 
    z.IDZamowienia, 
    z.IDKlienta, 
    k.Imie || ' ' || k.Nazwisko AS Klient, 
    z.DataZamowienia 
FROM 
    sklep_internetowy.zamowienia z 
JOIN 
    sklep_internetowy.klienci k ON z.IDKlienta = 
k.IDKlienta 
ORDER BY 
    z.DataZamowienia DESC LIMIT 5; 
```
Widok ten zawiera informacje o pięciu najnowszych zamówieniach, obejmując klienta, datę zamówienia i identyfikator zamówienia. 
 
 
Średnia wartość zamówienia 

```sql
CREATE VIEW sklep_internetowy.srednia_wartosc_zamowienia AS 
SELECT 
    z.IDZamowienia, 
    AVG(p.Cena * pz.Ilosc) AS SredniaWartoscZamowienia 
FROM     sklep_internetowy.zamowienia z 
JOIN 
    sklep_internetowy.pozycjeZamowienia pz ON 
z.IDZamowienia = pz.IDZamowienia 
JOIN 
    sklep_internetowy.produkty p ON pz.IDProduktu = 
p.IDProduktu 
GROUP BY 
    z.IDZamowienia;
```

Ten widok oblicza średnią wartość zamówienia, uwzględniając ceny i ilości produktów w każdym zamówieniu. 
 
Tworzenie lub Zastępowanie Widoku „WidokZamowien” 

```sql
-- Tworzenie widoku "WidokZamowien" 
CREATE OR REPLACE VIEW sklep_internetowy.WidokZamowien 
AS 
SELECT 
    z.IDZamowienia, 
    k.Imie AS ImieKlienta, 
    k.Nazwisko AS NazwiskoKlienta, 
    p.NazwaProduktu,     pz.Ilosc, 
    p.Cena * pz.Ilosc AS Kwota 
FROM 
    sklep_internetowy.zamowienia z 
JOIN 
    sklep_internetowy.klienci k ON z.IDKlienta = 
k.IDKlienta 
JOIN 
    sklep_internetowy.pozycjeZamowienia pz ON 
z.IDZamowienia = pz.IDZamowienia 
JOIN 
    sklep_internetowy.produkty p ON pz.IDProduktu = 
p.IDProduktu; 
```

`CREATE VIEW` tworzy nowy widok. 

`OR REPLACE` pozwala na zastąpienie istniejącego widoku o tej samej nazwie, jeśli taki 
istnieje. 

# Zadania 
### Zadanie 1.	
Stwórz widok, który przedstawia listę klientów wraz z ich imionami, nazwiskami oraz liczbą dokonanych zamówień. 

### Zadanie 2.	
Stwórz widok, który przedstawia produkty, których IDProduktu nie znajduje się w tabeli pozycjeZamówienia. 
(podpowiedź: `LEFT JOIN`, `IS NULL`) 

### Zadanie 3.	
Stwórz widok, który przedstawia listę produktów wraz z ich nazwami i ilością zamówień, posortowaną malejąco według ilości zamówień. 

### Zadanie 4.	
Stwórz widok, który przedstawia listę zamówień wraz z nazwami produktów i ilościami zamówionych produktów. 

### Zadanie 5.	
Stwórz widok, który przedstawia sumę wartości zamówień dla każdego miesiąca. 
(podpowiedź: `DATE_TRUNC('month', z.DataZamowienia) AS Miesiac)` 
