-- Create a new table
CREATE TABLE USER_ACTIVITY_LOGS (
    LOG_ID INT PRIMARY KEY AUTO_INCREMENT,
    USER_ID INT,
    ACTION VARCHAR(255),
    TIMESTAMP DATETIME,
    FOREIGN KEY (USER_ID) REFERENCES SEC_USER(USR_UID)
);

-- Insert data into the table 
INSERT INTO USER_ACTIVITY_LOGS (USER_ID, ACTION, TIMESTAMP) 
VALUES
(101, 'Logged in', '2024-04-30 09:15:00'),
(201, 'Updated patient record', '2024-04-30 10:30:00'),
(202, 'Created new appointment', '2024-04-30 11:45:00'),
(702, 'Viewed medical records', '2024-04-30 12:00:00');

-- Retrive data from the table based on conditions
SELECT * FROM USER_ACTIVITY_LOGS;
