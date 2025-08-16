DELIMITER //

CREATE PROCEDURE ListAllSubscribers()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE sName VARCHAR(100);

    -- declare cursor to select all subscriber names
    DECLARE cur CURSOR FOR
        SELECT SubscriberName FROM Subscribers;

    -- handler for end of cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO sName;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        -- print the subscriber name
        SELECT sName AS SubscriberName;
    END LOOP;

    CLOSE cur;
END //

DELIMITER ;
