CREATE TABLE IF NOT EXISTS employee_account (
    employee_id SERIAL PRIMARY KEY,
    username VARCHAR(30) UNIQUE NOT NULL DEFAULT employee_id,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL
);

-- FOR EMPLOYEE ID'S FORMAT.
CREATE TABLE Sequence (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value BIGINT NOT NULL
);

INSERT INTO Sequence (seq_name, seq_value) VALUES ('employeeID_seq', 1);

DELIMITER $$

CREATE TRIGGER before_insert_employee
BEFORE INSERT ON employee_account

FOR EACH ROW
BEGIN
    DECLARE new_id VARCHAR(20);

    UPDATE Sequence SET seq_value = seq_value + 1 WHERE seq_name = 'employeeID_seq';

    SELECT CONCAT('EM', LPAD(seq_value, 4, '0')) INTO new_id
    FROM Sequence WHERE seq_name = 'employeeID_seq';

    SET NEW.id = new_id;
END $$

DELIMITER ;

