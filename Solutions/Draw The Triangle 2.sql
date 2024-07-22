DELIMITER $$

CREATE PROCEDURE print()
    BEGIN
        DECLARE var INT DEFAULT 20;
        DECLARE counter INT DEFAULT 1;
        WHILE counter <= var DO
            SELECT REPEAT('* ', counter);
            SET counter = counter + 1;
        END WHILE;
    END $$
        
DELIMITER ;
CALL print()
