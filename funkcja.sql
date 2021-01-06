SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER **
CREATE FUNCTION ilosc_pracownikow_zarabiajacych(n int)
RETURNS INT
BEGIN
SELECT COUNT(zarobki) FROM pracownicy
WHERE zarobki = n INTO n;
RETURN n;
END**