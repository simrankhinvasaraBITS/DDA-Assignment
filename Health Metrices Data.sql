-- Create a new table
CREATE TABLE HEALTH_MATRIX (
    METRIC_UID INT PRIMARY KEY AUTO_INCREMENT,
    USR_UID INT,
    DEVICE_UID INT,
    METRIC_DATE DATE,
    APP_TIME TIME,
    METRIC_TYPE VARCHAR(255),
    METRIC_VALUE DECIMAL(10, 2),
    METRIC_UNIT VARCHAR(50),
    METRIC_NOTES TEXT,
    LOCATION VARCHAR(100),
    METRIC_QUALITY VARCHAR(50),
    METRIC_CONTEXT VARCHAR(100),
    IS_MANUAL_ENTRY BOOLEAN,
    IS_VERIFIED BOOLEAN,
    METRIC_LST_MODIFY_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    METRIC_LST_MODIFY_BY VARCHAR(255),
    METRIC_CREATED_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    METRIC_CREATED_BY VARCHAR(255),
    FOREIGN KEY (USR_UID) REFERENCES SEC_USER(USR_UID),
    FOREIGN KEY (DEVICE_UID) REFERENCES DEVICES(DEVICE_UID)
);

-- Insert data into the table 
INSERT INTO HEALTH_MATRIX (USR_UID, DEVICE_UID, METRIC_DATE, APP_TIME, METRIC_TYPE, METRIC_VALUE, METRIC_UNIT, METRIC_NOTES, LOCATION, METRIC_QUALITY, METRIC_CONTEXT, IS_MANUAL_ENTRY, IS_VERIFIED, METRIC_LST_MODIFY_BY, METRIC_CREATED_BY)
VALUES 
(201, 1, '2024-05-03', '08:45:00', 'Glucose Level', 95, 'mg/dL', 'Recorded by wearable device', 'Clinic', 'Good', 'Fasting', false, true, 'device1', 'admin'),
(202, 2, '2024-05-04', '10:00:00', 'Heart Rate', 75, 'bpm', 'Resting heart rate', 'Clinic', 'Good', 'Pre-meal', false, true, 'device2', 'admin'),
(206, null,'2024-05-05', '08:30:00', 'Blood Pressure', 125, 'mmHg', 'Measured at home', 'Home', 'Good', 'Pre-meal', true, true, 'jennifer_martin', 'jennifer_martin');


-- Retrive data from the table based on conditions
SELECT * FROM HEALTH_MATRIX;
SELECT * FROM HEALTH_MATRIX WHERE METRIC_TYPE = 'Blood Pressure';

-- Update data from the table 
UPDATE HEALTH_MATRIX
SET METRIC_VALUE = 130, LOCATION = 'Hospital'
WHERE METRIC_UID = 1;

-- Delete data from the table 
DELETE FROM HEALTH_MATRIX
WHERE USR_UID = 204;
