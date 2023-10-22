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
DROP TABLE IF EXISTS DEDUCTIONS;
CREATE TABLE DEDUCTIONS (
	deduction_id INT auto_increment primary KEY,
    F_name VARCHAR(50) NOT NULL, 
    L_name VARCHAR(50) NOT NULL, 
    amount DECIMAL (10,2),
    salary_id INT,
    FOREIGN KEY (salary_id) REFERENCES Salary (salary_id)
    );
CREATE TABLE Payroll (
    payroll_id INT AUTO_INCREMENT PRIMARY KEY,
    pay_period VARCHAR(50),
    pay_date DATE,
    employee_id INT,
    total_earnings DECIMAL(10, 2),
    total_deductions DECIMAL(10, 2),
    net_payment DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);
CREATE TABLE Department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    D_name VARCHAR(100),
    Location VARCHAR(255)
);

CREATE TABLE Salary (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    base_salary DECIMAL(10, 2),
    effective_date DATE
);

CREATE TABLE Earnings (
    earning_id INT AUTO_INCREMENT PRIMARY KEY,
    salary_id INT,
    name VARCHAR(100),
    amount DECIMAL(10, 2),
    FOREIGN KEY (salary_id) REFERENCES Salary(salary_id)
);
   
    
