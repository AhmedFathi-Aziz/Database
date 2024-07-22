DELIMITER $$

CREATE PROCEDURE print()
    BEGIN
        DECLARE var INT DEFAULT 20;
        WHILE var > 0 DO
            SELECT REPEAT('* ', var);
            SET var = var - 1;
        END WHILE;
    END $$
        
DELIMITER ;
CALL print()
