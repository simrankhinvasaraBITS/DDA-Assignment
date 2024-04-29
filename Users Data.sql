show tables;

-- Create a new table
CREATE TABLE SEC_USER (
    USR_UID INT NOT NULL PRIMARY KEY, 
    USR_USERNAME VARCHAR(80) NOT NULL, 
    USR_FNAME VARCHAR(40) NOT NULL, 
    USR_LNAME VARCHAR(40), 
    USR_EMAIL VARCHAR(120) NOT NULL, 
    USR_PASSWORD VARCHAR(80) NOT NULL, 
    USR_PHONE_NUM VARCHAR(20) NOT NULL, 
    USR_ACTIVE_IND VARCHAR(1) NOT NULL, 
    USR_TYPE VARCHAR(1) NOT NULL, 
    USR_DEPT VARCHAR(20), 
    USR_LOCATION VARCHAR(20), 
    USR_LST_MODIFY_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
    USR_LST_MODIFY_BY VARCHAR(30), 
    USR_CREATED_DT TIMESTAMP, 
    USR_CREATED_BY VARCHAR(30) 
);

-- Insert data into the table  
INSERT INTO 
SEC_USER (USR_UID, USR_USERNAME, USR_FNAME, USR_LNAME, USR_EMAIL, USR_PASSWORD, USR_PHONE_NUM, USR_ACTIVE_IND, USR_TYPE, USR_DEPT, USR_LOCATION, USR_LST_MODIFY_DT, USR_LST_MODIFY_BY, USR_CREATED_DT, USR_CREATED_BY) 
VALUES
('101', 'health_admin', 'Health', 'Admin', 'admin@example.com', 'admin456', '5555555555', 'Y', 'A', 'Administration', 'Los Angeles', '2024-04-10 12:00:00', 'admin', '2024-04-10 12:00:00', 'admin'),
('201', 'john_doe', 'John', 'Doe', 'john.doe@example.com', 'password123', '8574866945', 'Y', 'P', '', 'New York', '2024-04-12 12:00:00', 'admin', '2024-04-12 12:00:00', 'admin'),
('202', 'amy_jones', 'Amy', 'Jones', 'amy.jones@example.com', 'pass123', '9992223333', 'Y', 'P', '', 'Houston', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('203', 'david_clark', 'David', 'Clark', 'david.clark@example.com', 'david1234', '9877432651', 'Y', 'P', '','Boston', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('204', 'linda_davis', 'Linda', 'Davis', 'linda.davis@example.com', 'pass123', '4485766915', 'Y', 'P', '','San Francisco', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('205', 'michael_thomas', 'Michael', 'Thomas', 'michael.thomas@gmail.com', 'demo111', '2254877965', 'Y', 'P', '','San Francisco', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('206', 'jennifer_martin', 'Jennifer', 'Martin', 'jennifer.martin@example.com', 'martin124', '4758469352', 'Y', 'P', '', 'Boston', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('501', 'dr_smith', 'Jane', 'Smith', 'jane.smith@example.com', 'abc123', '9876543210', 'Y', 'D', 'Internal Medicine', 'Chicago', '2024-04-15 12:00:00', 'admin', '2024-04-15 12:00:00', 'admin'),
('502', 'dr_mike', 'Michael', 'Smith', 'mike.smith@example.com', 'doctor321', '7895556666', 'Y', 'D', 'Cardiology', 'San Francisco', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('503', 'dr_johnson', 'Dr. Alice', 'Johnson', 'alice.johnson@example.com', 'doctorpassword', '9988776655', 'Y', 'D', 'Surgery', 'San Francisco', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('504', 'dr_smith', 'Dr. Robert', 'Smith', 'robert.smith@example.com', 'doctor321123', '7895556677', 'Y', 'D', 'Pediatrics', 'Boston', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('505', 'mary_jones', 'Mary', 'Jones', 'mary.jones@example.com', 'password789', '7895786666', 'Y', 'D', 'Orthopedics', 'Los Angeles', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('506', 'dr_miller', 'Dr. Michael', 'Miller', 'michael.miller@example.com', 'doctor@321', '7891156666', 'Y', 'D', 'Cardiology', 'San Francisco', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('507', 'dr_mike_jones', 'Dr. Mike', 'Jones', 'mike.jones@example.com', 'doctor321', '7895556666', 'Y', 'D', 'Cardiology', 'San Francisco', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('701', 'nurse_sarah', 'Sarah', 'Johnson', 'sarah.johnson@example.com', 'nurse567', '7778889999', 'Y', 'N', 'Emergency', 'Boston', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('702', 'nurse_emily', 'Emily', 'Smith', 'emily.smith@example.com', 'nurse111', '1122334455', 'Y', 'N', 'Orthopedics', 'Boston', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin'),
('703', 'nurse_olivia', 'Olivia', 'Wilson', 'olivia.wilson@example.com', 'nursepassword5', '9988776655', 'Y', 'N', 'Surgery', 'Boston', '2024-04-29 12:00:00', 'admin', '2024-04-29 12:00:00', 'admin');
 

-- Retrive data from the table based on conditions
SELECT * FROM SEC_USER;
SELECT * FROM SEC_USER WHERE USR_TYPE = 'P';


-- Update data from the table
UPDATE SEC_USER SET USR_PASSWORD = 'newpassword123' WHERE USR_USERNAME = 'amy_jones';
UPDATE SEC_USER SET USR_ACTIVE_IND = 'N' WHERE USR_USERNAME = 'dr_mike';

-- Delete data from the table 
DELETE FROM SEC_USER WHERE USR_USERNAME = 'dr_mike_jones';
