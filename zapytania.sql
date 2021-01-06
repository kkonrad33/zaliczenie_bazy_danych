CREATE VIEW zarobki_ekspedientow
AS
    SELECT SUM(zarobki) AS 'Łączne zarobki ekspedientów'
    FROM	pracownicy
    WHERE
        (stanowisko = 'ekspedient wypożyczalni');

CREATE VIEW wypozyczenia_2020
AS
	SELECT	id_wypozycenia AS 'Wypożyczenia w 2020 roku.'
	FROM	wypozyczenia
	WHERE	(YEAR(data_wypozyczenia) < 2021);
CREATE VIEW tytuly_alfabetycznie
AS
 SELECT 
        tytul AS 'tytuły alfabetcznie'
    FROM
        filmy
    ORDER BY tytul;

CREATE VIEW ranking_zarobkow
AS
    SELECT imie, nazwisko, zarobki
    FROM
        pracownicy
    ORDER BY zarobki;

CREATE VIEW pracownicy_obsluga_wypoz
AS
	SELECT pracownicy.imie, pracownicy.nazwisko, wypozyczenia.data_wypozyczenia
    FROM pracownicy
         INNER JOIN wypozyczenia ON pracownicy.id_pracownika = wypozyczenia.id_pracownik_wypoz
    ORDER BY wypozyczenia.data_wypozyczenia DESC;

CREATE VIEW lista_pracownikow_odbierajacych
AS
    SELECT 
        pracownicy.imie,
        pracownicy.nazwisko,
        wypozyczenia.id_pracownik_zwrot
    FROM
        wypozyczenia
        LEFT JOIN pracownicy ON pracownicy.id_pracownika = wypozyczenia.id_pracownik_zwrot
    WHERE
        wypozyczenia.id_pracownik_zwrot IS NOT NULL;

CREATE VIEW filmy_wyprodukowane_w_usa
AS
    SELECT 
        tytul AS 'Filmy produkcji amerykańskiej'
    FROM
        filmy
    WHERE
        produkcja LIKE '%USA%'
    ORDER BY premiera DESC;

CREATE VIEW filmy_tarantino
AS
SELECT 
        tytul AS 'Filmy reżyserowane przez Quentina Tarantino'
    FROM
        filmy
    WHERE
        rezyseria = 'Quentin Tarantino';

CREATE VIEW filmy_psychologiczne
AS
 SELECT 
        filmy.tytul,
        gatunki.nazwa_gatunku
    FROM
        filmy
        INNER JOIN gatunki ON filmy.id_gatunku = gatunki.id_gatunk
    WHERE
        filmy.id_gatunku = 16;
CREATE VIEW imiona_pracownikow_odbierajacych
AS
SELECT imie
FROM pracownicy
WHERE id_pracownika IN (SELECT id_pracownika
						FROM wypozyczenia
                        WHERE id_pracownik_zwrot IS NOT NULL);
