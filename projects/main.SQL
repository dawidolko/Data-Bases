-- Tworzenie tabeli 'produkty'
CREATE TABLE produkty (
  id INT PRIMARY KEY,
  nazwa VARCHAR(100) NOT NULL,
  cena DECIMAL(10, 2) NOT NULL,
  ilosc INT NOT NULL
);

-- Wstawienie kilku przykładowych produktów
INSERT INTO produkty (id, nazwa, cena, ilosc) VALUES
(1, 'Telefon', 999.99, 50),
(2, 'Laptop', 1499.00, 30),
(3, 'Słuchawki', 99.50, 100),
(4, 'Klawiatura', 49.99, 75),
(5, 'Myszka', 29.99, 80);

-- Tworzenie tabeli 'klienci'
CREATE TABLE klienci (
  id INT PRIMARY KEY,
  imie VARCHAR(50) NOT NULL,
  nazwisko VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  numer_telefonu VARCHAR(15)
);

-- Wstawienie kilku przykładowych klientów
INSERT INTO klienci (id, imie, nazwisko, email, numer_telefonu) VALUES
(1, 'Jan', 'Kowalski', 'jan.kowalski@example.com', '123456789'),
(2, 'Anna', 'Nowak', 'anna.nowak@example.com', '987654321'),
(3, 'Piotr', 'Wójcik', 'piotr.wojcik@example.com', '555555555');

-- Tworzenie tabeli 'zamowienia'
CREATE TABLE zamowienia (
  id INT PRIMARY KEY,
  klient_id INT NOT NULL,
  data_zamowienia DATE NOT NULL,
  status VARCHAR(20) NOT NULL,
  FOREIGN KEY (klient_id) REFERENCES klienci(id)
);

-- Wstawienie kilku przykładowych zamówień
INSERT INTO zamowienia (id, klient_id, data_zamowienia, status) VALUES
(1, 1, '2023-07-19', 'W trakcie realizacji'),
(2, 2, '2023-07-18', 'Zamówione'),
(3, 1, '2023-07-17', 'Wysłane');

-- Tworzenie tabeli 'szczegoly_zamowienia'
CREATE TABLE szczegoly_zamowienia (
  id INT PRIMARY KEY,
  zamowienie_id INT NOT NULL,
  produkt_id INT NOT NULL,
  ilosc INT NOT NULL,
  FOREIGN KEY (zamowienie_id) REFERENCES zamowienia(id),
  FOREIGN KEY (produkt_id) REFERENCES produkty(id)
);

-- Wstawienie kilku przykładowych szczegółów zamówienia
INSERT INTO szczegoly_zamowienia (id, zamowienie_id, produkt_id, ilosc) VALUES
(1, 1, 1, 2),
(2, 1, 3, 1),
(3, 2, 4, 3),
(4, 3, 2, 1),
(5, 3, 5, 2);
