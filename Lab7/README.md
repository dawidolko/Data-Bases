# Laboratorium 7
## Bazy Danych 1
### mgr. inż. Aleksander Wojtowicz

**INNER JOIN (Łączenie wewnętrzne)**:

• `INNER JOIN` zwraca tylko te wiersze, które mają dopasowanie w obu tabelach.

• Jeżeli nie ma dopasowania, wiersz nie zostanie uwzględniony w wynikach. 

Wprowadzaj polecenia pojedynczo i w jednej linii. 
```
--Wybierz ID klienta, imię klienta i ID zamówienia dla klientów, którzy złożyli zamówienia.
SELECT k.IDKlienta, k.Imie, z.IDZamowienia
FROM sklep_internetowy.klienci k
INNER JOIN sklep_internetowy.zamowienia z ON k.IDKlienta = z.IDKlienta;

 -- Wybierz imiona klientów oraz ilość zamówionych produktów w zamówieniach.
SELECT k.Imie, k.Nazwisko, COUNT(pz.IDProduktu) AS IloscProduktow
FROM sklep_internetowy.klienci k
INNER JOIN sklep_internetowy.zamowienia z ON k.IDKlienta = z.IDKlienta
INNER JOIN sklep_internetowy.pozycjezamowienia pz ON z.IDZamowienia = pz.IDZamowienia
GROUP BY k.IDKlienta, k.Imie, k.Nazwisko;

-- Zadanie 3: Wybierz produkty, które zostały zamówione w danym zakresie dat.
SELECT p.NazwaProduktu, pz.Ilosc, z.DataZamowienia
FROM sklep_internetowy.produkty p
INNER JOIN sklep_internetowy.pozycjezamowienia pz ON p.IDProduktu = pz.IDProduktu
INNER JOIN sklep_internetowy.zamowienia z ON pz.IDZamowienia = z.IDZamowienia
WHERE z.DataZamowienia BETWEEN '2023-01-01' AND '2023-12-31';
-- Zadanie 4: Wybierz klientów, którzy złożyli zamówienia na produkty o cenie powyżej 100 zł.
SELECT DISTINCT k.Imie, k.Nazwisko
FROM sklep_internetowy.klienci k
INNER JOIN sklep_internetowy.zamowienia z ON k.IDKlienta = z.IDKlienta
INNER JOIN sklep_internetowy.pozycjezamowienia pz ON z.IDZamowienia = pz.IDZamowienia
INNER JOIN sklep_internetowy.produkty p ON pz.IDProduktu = p.IDProduktu
WHERE p.Cena > 100.00;
```
**COUNT**
Liczy rzeczy.
*Na przykład, `COUNT(pz.IDProduktu)` liczy, ile produktów zamówił każdy klient.*

**DISTINCT**
Usuwa powtórzenia.
W przypadku` SELECT DISTINCT k.Imie, k.Nazwisko`, pokazuje tylko unikalne kombinacje imienia i nazwiska klientów, eliminując powtarzające się.
`LEFT JOIN` (Łączenie lewe, zewnętrzne):

• `LEFT JOIN` zwraca wszystkie wiersze z lewej tabeli (pierwszej podanej), oraz pasujące wiersze z prawej tabeli.

• Jeżeli nie ma dopasowania w prawej tabeli, to pola dla tej tabeli będą `NULL`.

```
-- Wybierz ID klienta, imię klienta i ID zamówienia dla wszystkich klientów, łącznie z tymi, którzy nie złożyli zamówienia.
SELECT k.IDKlienta, k.Imie, z.IDZamowienia
FROM sklep_internetowy.klienci k L
EFT JOIN sklep_internetowy.zamowienia z ON k.IDKlienta = z.IDKlienta;

-- Wybierz nazwy produktów i ilość zamówionych sztuk, łącznie z produktami, które nie zostały jeszcze zamówione.
SELECT p.NazwaProduktu, pz.Ilosc
FROM sklep_internetowy.produkty p
LEFT JOIN sklep_internetowy.pozycjezamowienia pz ON p.IDProduktu = pz.IDProduktu;

-- Wybierz nazwiska klientów, którzy nie złożyli jeszcze żadnych zamówień.
SELECT k.Nazwisko
FROM sklep_internetowy.klienci k
LEFT JOIN sklep_internetowy.zamowienia z ON k.IDKlienta = z.IDKlienta
WHERE z.IDZamowienia IS NULL;
```

**RIGHT JOIN (Łączenie prawe, zewnętrzne)**:

• RIGHT JOIN jest podobny do `LEFT JOIN`, ale zwraca wszystkie wiersze z prawej tabeli, a pasujące z lewej.

• Jeżeli nie ma dopasowania w lewej tabeli, to pola dla tej tabeli będą `NULL`. 

```
-- Wybierz ID zamówienia, imię klienta i nazwisko klienta dla wszystkich zamówień, łącznie z zamówieniami, które nie mają przypisanego klienta.
SELECT z.IDZamowienia, k.Imie, k.Nazwisko
FROM sklep_internetowy.klienci k
RIGHT JOIN sklep_internetowy.zamowienia z ON k.IDKlienta = z.IDKlienta;

-- Wybierz nazwy produktów i ilość zamówionych sztuk, łącznie z produktami, które nie mają przypisanych zamówień.
SELECT p.NazwaProduktu, pz.Ilosc
FROM sklep_internetowy.produkty p
RIGHT JOIN sklep_internetowy.pozycjezamowienia pz ON p.IDProduktu = pz.IDProduktu;

-- Wybierz daty zamówień i imiona klientów, łącznie z zamówieniami, które nie mają przypisanego klienta.
SELECT z.DataZamowienia, k.Imie
FROM sklep_internetowy.klienci k
RIGHT JOIN sklep_internetowy.zamowienia z ON k.IDKlienta = z.IDKlienta WHERE k.IDKlienta IS NULL;
```
**GROUP BY (Grupowanie)**:
• Grupuje wyniki zapytania według wartości w wybranej kolumnie.
• Pozwala na stosowanie funkcji agregujących (np. COUNT, SUM, AVG) do analizy danych w obrębie każdej grupy. 
```
-- Średnia cena produktów w zamówieniach
SELECT Z.IDZamowienia, AVG(P.Cena) AS SredniaCena
FROM sklep_internetowy.Zamowienia Z
JOIN sklep_internetowy.PozycjeZamowienia PZ ON Z.IDZamowienia = PZ.IDZamowienia
JOIN sklep_internetowy.Produkty P ON PZ.IDProduktu = P.IDProduktu
GROUP BY Z.IDZamowienia;

-- Ilość zamówień dokonanych przez każdego klienta SELECT K.IDKlienta, K.Imie, K.Nazwisko, COUNT(Z.IDZamowienia) AS IloscZamowien FROM sklep_internetowy.Klienci K LEFT JOIN sklep_internetowy.Zamowienia Z ON K.IDKlienta = Z.IDKlienta GROUP BY K.IDKlienta, K.Imie, K.Nazwisko;

-- Suma wartości zamówień dla każdego produktu
SELECT P.IDProduktu, P.NazwaProduktu, SUM(P.Cena * PZ.Ilosc) AS SumaWartosci
FROM sklep_internetowy.Produkty P
JOIN sklep_internetowy.PozycjeZamowienia PZ ON P.IDProduktu = PZ.IDProduktu
GROUP BY P.IDProduktu, P.NazwaProduktu;

-- Ilość zamówionych produktów w poszczególnych kategoriach dla danego zamówienia
SELECT Z.IDZamowienia, P.NazwaProduktu, SUM(PZ.Ilosc) AS IloscZamowionych
FROM sklep_internetowy.Zamowienia Z
JOIN sklep_internetowy.PozycjeZamowienia PZ ON Z.IDZamowienia = PZ.IDZamowienia
JOIN sklep_internetowy.Produkty P ON PZ.IDProduktu = P.IDProduktu
GROUP BY Z.IDZamowienia, P.NazwaProduktu;
```
**SUM (suma)**: Ta funkcja dodaje wszystkie liczby w danej kolumnie.

Na przykład, SUM(Cena) zsumuje ceny wszystkich produktów.

**AVG (średnia)**: Ta funkcja znajduje średnią wartość w danej kolumnie.

Na przykład, AVG(Cena) znajdzie średnią cenę produktów.

## Zadania
### 1.
Znajdź wszystkich klientów, którzy dokonali zakupów (mają zamówienia) w sklepie internetowym.
### 2.
(COUNT, GROUP BY) Wyświetl nazwy produktów i ilość zamówień dla każdego produktu.
### 3.
Znajdź klientów, którzy nie dokonali jeszcze zakupów w sklepie internetowym.
### 4.
Pokaż wszystkie zamówienia wraz z danymi klienta dla każdego zamówienia.
### 5.
Wyświetl nazwy produktów, które zostały zamówione, wraz z ceną i ilością zamówionych sztuk.
### 6.
Znajdź zamówienia złożone przed daną datą wraz z danymi klienta.
### 7.
(3x INNER JOIN) Wyświetl nazwiska klientów i nazwy produktów dla każdego zamówienia.
### 8.
(DISTINCT) Znajdź klientów, którzy złożyli co najmniej jedno zamówienie w sklepie internetowym.
### 9.
Pokaż wszystkie pozycje zamówienia wraz z nazwą produktu i ceną dla każdej pozycji.
### 10.
Znajdź produkty, które nie zostały jeszcze zamówione.
