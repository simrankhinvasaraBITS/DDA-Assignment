-- Create a new table
CREATE TABLE APPOINTMENT_REMINDERS (
    REMINDER_ID INT PRIMARY KEY AUTO_INCREMENT,
    APPOINTMENT_ID INT,
    REMINDER_TIME DATETIME,
    REMINDER_MESSAGE VARCHAR(255),
    FOREIGN KEY (APPOINTMENT_ID) REFERENCES APPOINTMENTS(APP_UID)
);

-- Insert data into the table 
INSERT INTO APPOINTMENT_REMINDERS (APPOINTMENT_ID, REMINDER_TIME, REMINDER_MESSAGE) VALUES
(2, '2024-05-10 09:00:00', 'Reminder: Appointment scheduled for tomorrow.'),
(3, '2024-05-15 10:30:00', 'Reminder: Follow-up appointment in 3 days.'), 
(3, '2024-05-20 09:30:00', 'Reminder: Annual physical check-up scheduled next week.'),
(4, '2024-05-25 11:00:00', 'Reminder: Dental appointment in 10 days.'),
(5, '2024-06-01 14:00:00', 'Reminder: Orthopedic consultation appointment in two weeks.');

-- Retrive data from the table based on conditions
SELECT * FROM APPOINTMENT_REMINDERS;