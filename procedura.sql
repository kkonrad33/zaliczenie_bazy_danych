DELIMITER $$
CREATE PROCEDURE ostatnie_wypozyczenie (OUT ostatnie DATE)
BEGIN
SELECT MAX(data_wypozyczenia) INTO ostatnie FROM wypozyczenia;
END;
CALL ostatnie_wypozyczenie (@ostatnie); $$
SELECT @ostatnie;