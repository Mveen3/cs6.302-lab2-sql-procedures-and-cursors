DELIMITER //

CREATE PROCEDURE PrintAllWatchHistory()
BEGIN
    DECLARE sid INT;
    DECLARE done INT DEFAULT 0;

    -- Cursor to iterate through all subscribers
    DECLARE cur CURSOR FOR
        SELECT SubscriberID FROM Subscribers;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO sid;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        -- print header (subscriber id)
        SELECT CONCAT('Subscriber ID: ', sid) AS Header;

        -- call the procedure to print that subscriber's history
        CALL GetWatchHistoryBySubscriber(sid);
    END LOOP;
    CLOSE cur;
END //

DELIMITER ;
