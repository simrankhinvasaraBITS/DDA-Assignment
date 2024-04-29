-- Create a new table
CREATE TABLE MEDICINES (
    MEDICINE_UID INT PRIMARY KEY AUTO_INCREMENT,
    MEDICINE_NAME VARCHAR(255),
    MEDICINE_COMPANY VARCHAR(255),
    MEDICINE_EXPIRY_DT DATE,
    MEDICINE_MANUFACTURE_DT DATE,
    MEDICINE_PRICE DECIMAL(10, 2),
    MD_LST_MODIFY_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    MD_LST_MODIFY_BY VARCHAR(255),
    MD_CREATED_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    MD_CREATED_BY VARCHAR(255)
);

-- Insert data into the table  
INSERT INTO MEDICINES (MEDICINE_NAME, MEDICINE_COMPANY, MEDICINE_EXPIRY_DT, MEDICINE_MANUFACTURE_DT, MEDICINE_PRICE, MD_LST_MODIFY_BY, MD_CREATED_BY) 
VALUES
('Paracetamol', 'ABC Pharmaceuticals', '2024-12-31', '2022-01-15', 10.99, 'admin', 'admin'),
('Amoxicillin', 'XYZ Pharmaceuticals', '2023-06-30', '2022-02-28', 15.50, 'admin', 'admin'),
('Ibuprofen', 'DEF Pharmaceuticals', '2024-09-15', '2023-03-20', 8.75, 'admin', 'admin'),
('Lisinopril', 'PharmaCorp', '2023-11-30', '2021-12-15', 20.25, 'admin', 'admin'),
('Atorvastatin', 'MediLife', '2024-08-31', '2022-02-28', 18.75, 'admin', 'admin'),
('Metformin', 'HealthMeds', '2023-10-15', '2022-03-20', 12.50, 'admin', 'admin'),
('Omeprazole', 'Healthcare Inc.', '2023-07-15', '2022-01-20', 9.99, 'admin', 'admin'),
('Ciprofloxacin', 'MediPharma', '2024-05-31', '2023-03-28', 14.50, 'admin', 'admin'),
('Prednisone', 'BioHealth', '2023-09-30', '2022-04-15', 7.75, 'admin', 'admin'),
('Aspirin', 'Global Pharmaceuticals', '2024-10-31', '2023-04-15', 5.99, 'admin', 'admin'),
('Metoprolol', 'MediCare', '2023-12-15', '2022-05-20', 12.25, 'admin', 'admin'),
('Hydrochlorothiazide', 'MediLife', '2024-11-30', '2023-06-28', 8.50, 'admin', 'admin');


-- Retrive data from the table based on conditions
SELECT * FROM MEDICINES;
SELECT MEDICINE_NAME, MEDICINE_PRICE FROM MEDICINES;
SELECT * FROM MEDICINES WHERE MEDICINE_MANUFACTURE_DT > '2023-01-01';


-- Update data from the table 
UPDATE MEDICINES SET MEDICINE_PRICE = 6.99 WHERE MEDICINE_NAME = 'Aspirin';
UPDATE MEDICINES SET MEDICINE_MANUFACTURE_DT = '2023-07-01' WHERE MEDICINE_NAME = 'Hydrochlorothiazide';

-- Delete data from the table 
DELETE FROM MEDICINES WHERE MEDICINE_NAME = 'Prednisone';




