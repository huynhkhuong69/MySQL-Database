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
    jobname VARCHAR(50) NOT NULL,
    salary DECIMAL(19) NOT NULL,
    PRIMARY KEY(employee_id)
);

-- EMPLOYEE INPUT --
INSERT INTO EMPLOYEES(employee_id, F_name, L_name, M_initial, gender, jobname, salary)
VALUES
    (1, "John", "Doe", "K", "M", "Developer", 150000),
    (2, "Ryan", "Reynolds", "S", "M", "Frontend Developer", 120000),
    (3, "Anh", "Tran", "L", "F", "Hardware Engineer", 150000),
    (4, "Boss", "Nguyen", "J", "M", "Data Scientist", 120000),
    (5, "Alysa", "Williams", "E", "F", "Project Manager", 170000),
    (6, "John", "Talor", "R", "M", "UX Designer", 140000),
    (7, "Emy", "Martinez", "A", "F", "Marketing Manager", 120000),
    (9, "Ella", "Ho", "M", "F", "Data Analyst", 95000),
    (10, "William", "Johnson", "S", "M", "Systems Administrator", 125000);

DROP TABLE IF EXISTS DEDUCTIONS;
CREATE TABLE DEDUCTIONS (
    deduction_id INT AUTO_INCREMENT PRIMARY KEY,
    F_name VARCHAR(50) NOT NULL, 
    L_name VARCHAR(50) NOT NULL, 
    amount DECIMAL(10,2),
    salary_id INT
);

-- DEDUCTION INSERT--
INSERT INTO DEDUCTIONS(F_name, L_name, amount, salary_id)
VALUES
    ("John", "Doe", 15000, 1),
    ("Ryan", "Reynolds", 12000, 2),
    ("Anh", "Tran", 15000, 3),
    ("Boss", "Nguyen", 12000, 4),
    ("Alysa", "Williams", 17000, 5),
    ("John", "Talor", 14000, 6),
    ("Emy", "Martinez", 12000, 7),
    ("Ella", "Ho", 9500, 9),
    ("William", "Johnson", 12500, 10);

CREATE TABLE Payroll (
    payroll_id INT AUTO_INCREMENT PRIMARY KEY,
    pay_period VARCHAR(50),
    pay_date DATE,
    employee_id INT,
    total_earnings DECIMAL(10, 2),
    total_deductions DECIMAL(10, 2),
    net_payment DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
);

-- INSERT PAYROLL--
INSERT INTO Payroll (pay_period, pay_date, employee_id, total_earnings, total_deductions, net_payment)
VALUES
    ('May 2023', '2023-05-31', 1, 10000.00, 3000.00, 7000.00),
    ('May 2023', '2023-05-31', 2, 9000.00, 2500.00, 6500.00),
    ('May 2023', '2023-05-31', 3, 12000.00, 3500.00, 8500.00),
    ('June 2023', '2023-06-30', 4, 11000.00, 2800.00, 8200.00),
    ('June 2023', '2023-06-30', 5, 13000.00, 3800.00, 9200.00),
    ('June 2023', '2023-06-30', 6, 9500.00, 2700.00, 6800.00);

CREATE TABLE Department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    D_name VARCHAR(100),
    Location VARCHAR(255)
);
INSERT INTO Department (D_name, Location)
VALUES
    ('HR Department', ' Building D '),
    ('Engineering Department', 'Building A'),
    ('Sales Department', 'Building B'),
    ('Marketing Department', 'Building C '),
    ('Finance Department', 'Building E');


CREATE TABLE Salary (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    base_salary DECIMAL(10, 2),
    effective_date DATE
);

-- INSERT SALARY--
INSERT INTO Salary (base_salary, effective_date)
VALUES
    (50000.00, '2020-11-01'),
    (55000.00, '2019-01-02'),
    (60000.00, '2021-07-03'),
    (62000.00, '2022-04-03'),
    (65000.00, '2021-03-08');

CREATE TABLE Earnings (
    earning_id INT AUTO_INCREMENT PRIMARY KEY,
    salary_id INT,
    name VARCHAR(100),
    amount DECIMAL(10, 2),
    FOREIGN KEY (salary_id) REFERENCES Salary(salary_id)
);
   

-- INSERT EARNINGS --
INSERT INTO Earnings (salary_id, name, amount)
VALUES
    (1, 'Bonus', 3000.00),
    (1, 'Overtime', 2000.00),
    (2, 'Bonus', 4000.00),
    (2, 'Overtime', 2300.00),
    (3, 'Bonus', 8000.00),
    (3, 'Overtime', 1300.00),
    (4, 'Bonus', 4200.00),
    (4, 'Overtime', 1240.00),
    (5, 'Bonus', 2300.00),
    (5, 'Overtime', 1300.00);
