DELIMITER //

CREATE PROCEDURE GetWatchHistoryBySubscriber(IN sub_id INT)
BEGIN
    SELECT
        S.Title,
        W.WatchTime
    FROM WatchHistory W
    JOIN Shows S ON W.ShowID = S.ShowID
    WHERE W.SubscriberID = sub_id;
END //

DELIMITER ;
