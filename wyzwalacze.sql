DELIMITER $$
CREATE TRIGGER minimalna_stawka
BEFORE INSERT ON pracownicy FOR EACH ROW
BEGIN
IF NEW.zarobki < 2200 THEN SET NEW.zarobki = 2200;
END IF;
END $$
#wywalacz podnosi zarobki do kwoty minimalnej

DELIMITER $$
CREATE TRIGGER data_wypozyczenia
BEFORE INSERT ON wypozyczenia FOR EACH ROW
BEGIN
SET NEW.data_wypozyczenia = CURDATE();
END $$
#wyzwalacz dodaje do wypożyczenia aktualna date