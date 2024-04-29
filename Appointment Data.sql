-- Create a new table
CREATE TABLE APPOINTMENTS (
    APP_UID INT PRIMARY KEY AUTO_INCREMENT,
    USR_UID INT,
    DOCTOR_UID INT,
    APP_DATE DATE,
    APP_TIME TIME,
    APP_LOCATION VARCHAR(255),
    APP_REASON VARCHAR(255),
    APP_NOTES TEXT,
    APP_STATUS VARCHAR(50),
    APP_LST_MODIFY_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    APP_LST_MODIFY_BY VARCHAR(255),
    APP_CREATED_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    APP_CREATED_BY VARCHAR(255),
    FOREIGN KEY (USR_UID) REFERENCES SEC_USER(USR_UID),
    FOREIGN KEY (DOCTOR_UID) REFERENCES SEC_USER(USR_UID)
);


-- Insert data into the table  
-- Sample data for APPOINTMENTS table
INSERT INTO APPOINTMENTS (USR_UID, DOCTOR_UID, APP_DATE, APP_TIME, APP_LOCATION, APP_REASON, APP_NOTES, APP_STATUS, APP_LST_MODIFY_BY, APP_CREATED_BY) 
VALUES
(201, 501, '2024-05-10', '10:00:00', 'Medical Center A', 'Follow-up appointment', 'Please bring your medical records', 'Scheduled', 'admin', 'admin'),
(202, 502, '2024-05-15', '14:30:00', 'Clinic B', 'Annual check-up', 'Fasting required for blood tests', 'Scheduled', 'admin', 'admin'),
(203, 503, '2024-05-20', '09:45:00', 'Hospital C', 'Consultation with specialist', 'Bring any recent test results', 'Scheduled', 'admin', 'admin'),
(204, 701, '2024-05-25', '11:15:00', 'Health Center D', 'Vaccination appointment', 'No special instructions', 'Scheduled', 'admin', 'admin'),
(205, 504, '2024-05-30', '13:00:00', 'Urgent Care E', 'Emergency visit', 'Bring insurance information', 'Scheduled', 'admin', 'admin');


-- Retrive data from the table based on conditions
SELECT * FROM APPOINTMENTS;
SELECT APP_DATE, APP_TIME, APP_LOCATION, APP_REASON FROM APPOINTMENTS WHERE APP_DATE >= '2024-05-13';

-- Update data from the table 
UPDATE APPOINTMENTS 
SET APP_STATUS = 'Canceled' 
WHERE USR_UID = 201;

-- Delete data from the table 
DELETE FROM APPOINTMENTS 
WHERE APP_STATUS = 'Canceled';



