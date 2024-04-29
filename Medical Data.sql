-- Create a new table
CREATE TABLE MEDICAL_RECORD (
    MR_UID INT PRIMARY KEY AUTO_INCREMENT,
    USR_UID INT,
    ILLNESS VARCHAR(255),
    SURGERY VARCHAR(255),
    ALLERGY VARCHAR(255),
    MEDICATION VARCHAR(255),
    MR_LST_MODIFY_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    MR_LST_MODIFY_BY VARCHAR(255),
    MR_CREATED_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    MR_CREATED_BY VARCHAR(255),
    FOREIGN KEY (USR_UID) REFERENCES SEC_USER (USR_UID)
);



-- Insert data into the table  
INSERT INTO MEDICAL_RECORD (USR_UID, ILLNESS, SURGERY, ALLERGY, MEDICATION, MR_LST_MODIFY_BY, MR_CREATED_BY) VALUES
(201, 'Hypertension', 'Appendectomy', 'Penicillin', 'Aspirin, Lisinopril', 'admin', 'admin'),
(202, 'Diabetes', 'Cataract Surgery', 'Sulfa Drugs', 'Insulin, Metformin', 'admin', 'admin'),
(203, 'High Cholesterol', 'Gallbladder Removal', 'None', 'Atorvastatin', 'admin', 'admin'),
(204, 'Anxiety', 'Knee Replacement', 'Latex', 'Xanax', 'admin', 'admin'),
(206, 'Depression', 'Hip Replacement', 'Peanuts', 'Prozac', 'admin', 'admin');


-- Retrive data from the table based on conditions
SELECT * FROM MEDICAL_RECORD;
SELECT * FROM MEDICAL_RECORD WHERE USR_UID = 201;


-- Update data from the table 
UPDATE MEDICAL_RECORD
SET ILLNESS = 'Hypothyroidism',
    SURGERY = 'Knee Arthroscopy',
    ALLERGY = 'Shellfish',
    MEDICATION = 'Levothyroxine, Ibuprofen',
    MR_LST_MODIFY_BY = 'admin'
WHERE MR_UID = 1;
SELECT * FROM MEDICAL_RECORD WHERE MR_UID = 1;


-- Delete data from the table 
DELETE FROM MEDICAL_RECORD
WHERE USR_UID = 201 AND ILLNESS = 'High Cholesterol';
SELECT * FROM MEDICAL_RECORD;



