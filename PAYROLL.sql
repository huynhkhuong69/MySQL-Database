DROP DATABASE IF EXISTS PAYROLL;
CREATE DATABASE PAYROLL;
USE PAYROLL;

-- EMPLOYEES TABLE --
DROP TABLE IF EXISTS EMPLOYEES;
CREATE TABLE EMPLOYEES(
	employee_id INT(10) NOT NULL,
    F_name VARCHAR(50) NOT NULL,
    L_name VARCHAR(50) NOT NULL,
    M_initial CHAR(10),
    gender CHAR(10) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary DECIMAL(19) NOT NULL,
    PRIMARY KEY(employee_id)
);
-- EMPLOYEE INPUT --
INSERT INTO EMPLOYEES(employee_id, F_name, L_name, M_initial, gender, position, salary)
VALUES(1, "John", "Doe", "K", "M", "Developer", 150000)
VALUES(2, "Ryan", "Reynolds", "S", "Frontend Developer", 120000)
;
