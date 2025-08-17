==============================================
CS6.302 – Software System Development
Lab 2 : SQL – Stored Procedures and Cursors
==============================================

Steps to Execute the Scripts (in MySQL Workbench):

1.   Create and select the database you want to use (for example):
     
        CREATE DATABASE MyFlix;
        USE MyFlix;

2.   Create the required tables and insert sample data using the script provided
     in the question (Shows, Subscribers and WatchHistory).

3.   Execute each of the following SQL files one by one:

        q1.sql  -->  Creates the procedure ListAllSubscribers()
        q2.sql  -->  Creates the procedure GetWatchHistoryBySubscriber()
        q3.sql  -->  Creates the procedure AddSubscriberIfNotExists()
        q4.sql  -->  Creates the procedure SendWatchTimeReport()
        q5.sql  -->  Creates the procedure PrintAllWatchHistory()

     (Right-click on each file in Workbench → Open and click the 'Run' / ⚡ button.)

4.   After execution, you can call the procedures in the MySQL query editor
     using the following examples :

        CALL ListAllSubscribers();
        CALL GetWatchHistoryBySubscriber(1);
        CALL AddSubscriberIfNotExists('John Doe');
        CALL SendWatchTimeReport();
        CALL PrintAllWatchHistory();

----------------------------------------------------
Git Repository Link:
<https://github.com/Mveen3/cs6.302-lab2-sql-procedures-and-cursors>
----------------------------------------------------


