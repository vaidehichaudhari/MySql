create database EmployeeManagement;
use EmployeeManagement;
CREATE TABLE departments (
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(50) NOT NULL
);

CREATE TABLE salaries (
  salary_id INT AUTO_INCREMENT PRIMARY KEY,
  base_salary decimal(10) NOT NULL,
  bonus DECIMAL (10)
);

create table employees(
employee_id int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) unique not null,
phone_number varchar(15),
hire_date date not null,
job_title varchar(50)not null,
department_id int,
salary_id int ,
foreign key(department_id)references departments(department_id),
foreign key(salary_id) references salaries(salary_id)
);


CREATE TABLE departments (
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(50) NOT NULL
);

DESCRIBE departments;
insert into departments (department_name) values
('Human Resources'),
('Engineering'),
('sales'),
('Marketing');
DROP TABLE IF EXISTS departments;
CREATE TABLE salaries (
  salary_id INT AUTO_INCREMENT PRIMARY KEY,
  base_salary decimal(10) NOT NULL,
  bonus DECIMAL (10)
);

insert into salaries (base_salary, bonus) values
(50000, 5000),
(80000 ,10000 ),
(45000 ,7000),
(6000, 7000);

insert into employees (first_name, last_name, email,phone_number,hire_date,job_title,department_id,salary_id)values
('john','doe','john.doe@example.com','123-456-7890','2021-06-01', 'Software testing' ,2, 2),
('jane','smith','jane.smith@example.com','123-456-7890','2020-06-4', 'HR' ,2, 2),
('Alice','Johnson','alice.johnson@example.com','123-456-7890','2024-06-01', 'Sales Representative' ,2, 3),
('Bob','Brown','bob.brown@example.com','123-456-7893','2023-06-20', 'Marketing Specialist' ,4, 4);


select * from employees;

select e.employee_id, e.first_name, e.last_name, d.department_name
from employee e
join departments d on e.department_id=d.department_id
LIMIT 0, 1000;

select e.employee_id,e.first_name,s.base_salary,s.bonus
from employee e
join salaries s on e.salary_id=s.salary_id;


select first_name ,last_name, hire_date
from employees
where hire_date >'2021-01-01';

update employees set salary_id=3 where employee_id=1;

delete from employees where employee_id=4;