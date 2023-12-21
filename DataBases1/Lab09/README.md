# Laboratorium 9 
## Bazy Danych 1 
### mgr. inż. Aleksander Wojtowicz 
 
 
### Tworzenie nowej bazy danych: 
Komenda `CREATE DATABASE` służy do utworzenia nowej bazy danych 
 ```
CREATE DATABASE MojaBazaDanych;
```
 
### Tworzenie nowej tabeli: 
Komenda `CREATE TABLE` służy do utworzenia nowej tabeli w bazie danych. Definiuje się nazwy kolumn oraz ich typy danych. 
```
CREATE TABLE Uzytkownicy ( 
    ID INT, 
    Imie VARCHAR(50), 
    Wiek INT 
); 
```
 
### Modyfikacja istniejącej tabeli (Dodanie nowej kolumny): 
Komenda `ALTER TABLE` umożliwia zmianę struktury istniejącej tabeli, na przykład dodanie nowej kolumny. 
```
ALTER TABLE Uzytkownicy 
ADD COLUMN Email VARCHAR(100); 
```

### Dodanie klucza obcego do istniejącej tabeli: 
Komenda `ALTER TABLE` używana jest również do dodawania kluczy obcych. Klucz obcy łączy kolumnę w jednej tabeli z kolumną w innej tabeli. 
```
ALTER TABLE Zamowienia 
ADD CONSTRAINT FK_KlientID 
FOREIGN KEY (KlientID) REFERENCES Klienci(ID); 
```
 
### Zmiana typu danych kolumny w istniejącej tabeli: 
Komenda `ALTER TABLE` umożliwia zmianę typu danych istniejącej kolumny. 
```
ALTER TABLE Uzytkownicy 
ALTER COLUMN Wiek VARCHAR(3); 
```
 
 
### Dodanie klucza głównego: 
Dodanie klucza głównego również dokonuje się za pomocą polecenia `ALTER TABLE`.  
```
ALTER TABLE NazwaTabeli 
ADD CONSTRAINT NazwaKlucza PRIMARY KEY (NazwaKolumny); 
```

Przykład dodania klucza głównego dla tabeli "Uzytkownicy" z wykorzystaniem kolumny "ID": 
```
ALTER TABLE Uzytkownicy 
ADD CONSTRAINT PK_Uzytkownicy PRIMARY KEY (ID); 
```
Warto również zaznaczyć, że kolumna wykorzystywana jako klucz główny nie może zawierać wartości null, ponieważ klucz główny musi jednoznacznie identyfikować każdy wiersz w tabeli. 
 
### Dodawanie indeksów: 
Indeksy są używane w bazach danych do przyspieszania wyszukiwania i sortowania danych. 
 ```
CREATE INDEX NazwaIndeksu ON NazwaTabeli(NazwaKolumny); 
```

To polecenie tworzy indeks o nazwie "NazwaIndeksu" dla kolumny "NazwaKolumny" w tabeli "NazwaTabeli". Działa to podobnie do indeksu alfabetycznego w książce, co ułatwia szybkie odnalezienie odpowiednich rekordów. 
 
### Usuwanie bazy danych: 
Usuwanie bazy danych jest operacją, która całkowicie usuwa bazę danych wraz ze wszystkimi jej danymi. Pamiętaj, że ta operacja jest nieodwracalna. 
 
DROP DATABASE MojaBazaDanych; 
 
 
 
### Usuwanie tabeli: 
Usuwanie tabeli jest operacją, która usuwa całą tabelę wraz z jej strukturą i danymi. 
Również ta operacja jest nieodwracalna. 
-- Usuwanie tabeli o nazwie "NazwaTabeli" 
```
DROP TABLE NazwaTabeli; 
```
 
### Usuwanie kolumny: 
Usuwanie kolumny z istniejącej tabeli w bazie danych można zrealizować za pomocą polecenia `ALTER TABLE`. 
-- Usuwanie kolumny z tabeli 
```
ALTER TABLE NazwaTabeli 
DROP COLUMN NazwaKolumny; 
```
 
 
 
## Zadania 
### Zadanie 1.	
Utwórz nową bazę danych o nazwie "SklepOnline". 
### Zadanie 2.	
Utwórz nową tabelę "Produkty" z kolumnami: ID, Nazwa, Cena. 
### Zadanie 3.	
Dodaj nową kolumnę "Opis" do tabeli "Produkty". 
### Zadanie 4.	
Dodaj klucz główny "ID" do tabeli "Produkty". 
### Zadanie 5.	
Zmień typ danych kolumny "Cena" na INTEGER w tabeli "Produkty". 
### Zadanie 6. 
Utwórz indeks "IndeksNazwa" dla kolumny "Nazwa" w tabeli 
"Produkty". 
### Zadanie 7.	
Stwórz bazę danych "StaraBazaDanych", z tabelą 
„NiepotrzebnaTabela”, która ma „NiepotrzebnaKolumna”. 
### Zadanie 8.	
Usuń kolumnę "NiepotrzebnaKolumna" z tabeli "NiepotrzebnaTabela". 
### Zadanie 9.	
Usuń tabelę "StaraTabela" z bazy danych. 10. 	Usuń bazę danych "StaraBazaDanych". 
