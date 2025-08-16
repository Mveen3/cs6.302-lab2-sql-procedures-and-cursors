DELIMITER //

CREATE PROCEDURE SendWatchTimeReport()
BEGIN
    DECLARE sid INT;

    DECLARE done INT DEFAULT 0;
    DECLARE cur CURSOR FOR
        SELECT DISTINCT SubscriberID
        FROM WatchHistory;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO sid;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        CALL GetWatchHistoryBySubscriber(sid);
    END LOOP;
    CLOSE cur;
END //

DELIMITER ;
