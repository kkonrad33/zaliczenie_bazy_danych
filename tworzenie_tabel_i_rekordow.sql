CREATE DATABASE wypozyczalnia_filmow;
USE wypozyczalnia_filmow;
CREATE TABLE Gatunki
    (
         id_gatunku INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
         nazwa_gatunku VARCHAR(50) NOT NULL
    );

CREATE TABLE filmy
    (
         id_filmu INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
         tytul VARCHAR(200) NOT NULL,
         id_gatunku INT NOT NULL,
         rezyseria VARCHAR(100) NOT NULL,
         produkcja VARCHAR(100) NOT NULL,
         premiera DATE NOT NULL,
         FOREIGN KEY (id_gatunku)  REFERENCES Gatunki (id_gatunku)
    );

CREATE TABLE klienci
(
	id_klienta INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	imie VARCHAR(81) NOT NULL,
	nazwisko VARCHAR(27) NOT NULL,
	telefon INT NOT NULL,
	email VARCHAR(100),
	data_urodzenia DATE
);

CREATE TABLE pracownicy
(
	id_pracownika INT AUTO_INCREMENT PRIMARY KEY,
	PESEL VARCHAR(11) NOT NULL,
	imie VARCHAR(81) NOT NULL,
	nazwisko VARCHAR(27) NOT NULL,
	zarobki INT,
	stanowisko VARCHAR(50) NOT NULL,
	data_urodzenia DATE NOT NULL,
	data_zatrudnienia DATE NOT NULL
);

CREATE TABLE wypozyczenia
(
	id_wypozycenia INT AUTO_INCREMENT PRIMARY KEY,
	id_klienta INT,
	id_filmu INT,
	data_wypozyczenia DATE,
	data_zwrotu DATE,
	id_pracownik_wypoz INT,
	id_pracownik_zwrot INT,
	FOREIGN KEY (id_klienta)  REFERENCES klienci (id_klienta),
	FOREIGN KEY (id_pracownik_wypoz)  REFERENCES pracownicy (id_pracownika),
    FOREIGN KEY (id_pracownik_zwrot)  REFERENCES pracownicy (id_pracownika)
);

INSERT INTO Gatunki  (nazwa_gatunku)

VALUES

('Komedia'),
('Dramat'),
('Melodramat'),
('Western'),
('Horror'),
('Musical'),
('Thriller'),
('Film sensacyjny'),
('Film gangsterski'),
('Kryminał'),
('Film scince fiction'),
('Film fantasy'),
('Film płaszcza i szpady'),
('Film historyczny'),
('Film romantyczny'),
('Film psychologiczny'),
('Film wojenny'),
('Film szpiegowski'),
('Film familijny'),
('Film sportowy'),
('Film kostiumowy'),
('Film animowany');

INSERT INTO filmy (tytul, id_gatunku, rezyseria, produkcja, premiera)

VALUES

('Czy leci z nami piot?', 1, 'Jim Abrams, David Zucker, Jerry Zucker', 'USA', '1980-07-02'),
('Czarny Łabędź', 16, 'Darren Aronofsky', 'USA', '2010-09-01'),
('Psychoza', 7, 'Alfred Hitchcock', 'USA', '1960-06-16'),
('Siedmiu Wspaniałych', 4 ,'John Sturges', 'USA', '1960-10-12'),
('Infiltracja', 10, 'Martin Scorsese', 'Hongkong/USA', '2006-09-26'),
('Lepiej pózno niż pózniej', 1, 'Nancy Meyers', 'USA', '2003-12-12'),
('Kevin sam w domu', 19, 'Chris Columbus', 'USA', '1990-11-10'),
('Shrek', 22, 'Andrew Adamson, Vicky Jenson', 'USA', '2001-04-22'),
('Psy', 10, 'Władysław Pasikowski', 'Polska', '1992-12-31'),
('Grease', 6, 'Randal Kleiser', 'USA', '1978-06-13'),
('Seksmisja', 11, 'Juliusz Machulski', 'Polska', '1984-05-14'),
('Nietykalni', 2, 'Olivier Nakache, Éric Toledano', 'Francja', '2011-09-23'),
('Pulp Fiction', 9, 'Quentin Tarantino', 'USA', '1994-05-12'),
('Mama', 5, 'Andy Muschietti', 'Hiszpania/Kanada', '2013-01-17'),
('Pianista', 2, 'Roman Polański', 'Francja/Niemcy/Polska/Wielka Brytania', '2002-05-24'),
('Dziennik Bridget Jones', 15, 'Sharon Maguire', 'Francja/Irlandia/Wielka Brytania', '2001-04-04'),
('Django', 4, 'Quentin Tarantino', 'USA', '2012-12-11'),
('Platforma', 7, 'Galder Gaztelu-Urrutia', 'Hiszpania', '2019-09-06'),
('Lot nad kukułczym gniazdem', 16, 'Miloš Forman', 'USA', '1975-11-19'),
('Cube', 7, 'Vincenzo Natali', 'Kanada', '1997-09-09'),
('Przerwana lekcja muzyki', 16, 'James Mangold', 'Niemcy/USA','1999-12-08'),
('Miś', 1, 'Stanisław Bareja', 'Polska', '1981-05-04');

INSERT INTO klienci (imie, nazwisko, telefon, email, data_urodzenia)
VALUES

('Kasia', 'Nowak', 555111222, 'kasianowak111@gmail.com', '1999-12-03'),
('Robert', 'Walczuk', 532230421, 'walczukk22@tlen.pl', '1994-03-13'),
('Tomasz', 'Baranowski', 601042421, 'baranek821@gmail.com', '1999-01-24'),
('Martyna', 'Promienna', 723123421, 'mpromienna1@gmail.com', '2002-07-12'),
('Wiktor', 'Pacula', 502224521, 'kamyk3421@wp.pl', '2001-03-13'),
('Natalia', 'Bąk', 623213041, 'natibak@gmail,com', '1993-11-10'),
('Tomasz', 'Trojan', 521321982, 'wirustroj@gmail,com', '1995-04-23'),
('Szymon', 'Siep', 654747234, 'szzymsiep@tlen.pl', '1998-05-15'),
('Maria', 'Niebieska', 612928459, 'niebomaria@gmail.com', '1990-12-24'),
('Roman', 'Stoik', 741223094, 'stoikroman@wp.pl', '1993-10-19'),
('Bogan', 'Kowalski', 765302947, 'kowalbogus@gmail.com', '1963-06-12'),
('Elżbieta', 'Krasicka', 549323421, 'elakrasicka@tlen.pl', '1972-05-05'),
('Hanna', 'Przybysz', 653023048, 'zkosmosu@gmail.com', '1952-04-12');

INSERT INTO pracownicy (PESEL, imie, nazwisko, zarobki, stanowisko, data_urodzenia, data_zatrudnienia)

VALUES

('84011039718', 'Jan', 'Latawiec', 3700, 'ekspedient wypożyczalni', '1984-01-10', '2014-03-14'),
('95120213312','Michał','Milewicz', 3600,'ekspedient wypożyczalni','1995-02-12','2015-04-23'),
('96012782401','Patrycja','Makowska', 3600,'ekspedient wypożyczalni','1996-01-27','2015-02-26'),
('85102397916','Jakub','Radko', 7000,'prezes','1985-10-23','2012-06-04'),
('72101282629','Aleksandra','Zielowa',2200,'sprzątaczka','1972-10-12','2016-03-22'),
('81091619976','Rafał','Listkowski', 4000,'księgowy','1981-09-16','2014-05-14'),
('98050977592','Radek','Wiadro', 4600,'informatyk','1998-05-09','2014-07-06'),
('98083000205','Eliza','Dzwonek', 3400,'ekspedient wypożyczalni','1998-08-30','2018-12-03'),
('00261557190','Hubert','Dębiec', 3200,'ekspedient wypożyczalni','2000-06-15','2020-09-21');

INSERT INTO wypozyczenia (id_klienta, id_filmu, data_wypozyczenia, data_zwrotu, id_pracownik_wypoz, id_pracownik_zwrot)
VALUES
(3, 17, '2020-12-24', '2021-01-04', 1, 2),
(12, 24, '2020-01-02', '2020-01-07', 8, 1),
(2, 21, '2020-01-30', '2020-02-03', 2, 9),
(10, 18, '2020-02-12', '2020-02-17', 2, 3),
(5, 23, '2020-03-11', '2020-03-15', 3, 8),
(1, 4, '2020-05-06', '2020-05-10', 8, 8),
(13, 1, '2020-07-09', '2020-07-13', 1, 9),
(9, 33, '2020-10-20', '2020-10-28', 9, 2),
(3, 3, '2020-11-10', '2020-11-14', 3, 2),
(6, 28, '2020-12-01', '2020-12-10', 8, NULL),
(8, 20, '2020-12-03', '2020-12-14', 1, NULL);
