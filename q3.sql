DELIMITER //

CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    -- check if the name already exists
    IF NOT EXISTS (SELECT 1 FROM Subscribers WHERE SubscriberName = subName) THEN
        -- insert with a new SubscriberID (max+1)
        INSERT INTO Subscribers (SubscriberID, SubscriberName, SubscriptionDate)
        VALUES ((SELECT IFNULL(MAX(SubscriberID),0) + 1 FROM Subscribers), subName, CURRENT_DATE());
    END IF;
END //

DELIMITER ;
