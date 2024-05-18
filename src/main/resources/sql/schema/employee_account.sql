CREATE TABLE IF NOT EXISTS employee_account (
    employee_id TEXT PRIMARY KEY DEFAULT generate_employee_id(),
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL
);

-- FOR EMPLOYEE ID'S FORMAT.
CREATE SEQUENCE employee_id_seq
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  CYCLE;

CREATE OR REPLACE FUNCTION generate_employee_id()
RETURNS TEXT AS $$
BEGIN
  RETURN 'EM' || LPAD(nextval('employee_id_seq')::TEXT, 4, '0');
END;
$$ LANGUAGE plpgsql;




