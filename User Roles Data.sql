-- Create a new table
CREATE TABLE SEC_USER_ROLES (
    SEC_USR_ROLE_UID INT PRIMARY KEY AUTO_INCREMENT,
    SEC_USR_ROLE_NAME VARCHAR(255),
    SEC_USR_ROLE_NOTES TEXT,
    SEC_USR_ROLE_LST_MODIFY_DT TIMESTAMP,
    SEC_USR_ROLE_LST_MODIFY_BY VARCHAR(255),
    SEC_USR_ROLE_CREATED_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    SEC_USR_ROLE_CREATED_BY VARCHAR(255)
);

-- Insert data into the table 
INSERT INTO SEC_USER_ROLES (SEC_USR_ROLE_NAME, SEC_USR_ROLE_NOTES, SEC_USR_ROLE_LST_MODIFY_DT, SEC_USR_ROLE_LST_MODIFY_BY, SEC_USR_ROLE_CREATED_BY)
VALUES 
('Admin', 'Administrator role with full access permissions', CURRENT_TIMESTAMP, 'admin_user', 'admin_user'),
('Doctor', 'Role for doctors with restricted access', CURRENT_TIMESTAMP, 'admin_user', 'admin_user'),
('Nurse', 'Role for nurses with limited access', CURRENT_TIMESTAMP, 'admin_user', 'admin_user'),
('Patient', 'Role for patients with minimal access', CURRENT_TIMESTAMP, 'admin_user', 'admin_user');

-- Retrive data from the table based on conditions
SELECT * FROM SEC_USER_ROLES;