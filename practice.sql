-- use world;
-- show tables;
-- select * from country;



-- day2--
create database batch42;
use batch42;
create table departments(
department_id int auto_increment primary key,
depatment_name varchar(100)not null
);
show tables;
CREATE TABLE salaries (
  salary_id INT AUTO_INCREMENT PRIMARY KEY,
  base_salary INT NOT NULL,
  bonus INT NOT NULL
);

 DROP TABLE IF EXISTS employees;
create table employees(
employee_id int  auto_increment primary key,
first_name varchar(50),
last_name varchar(50)not null,
email varchar(50) unique not null,
phone_number varchar (15),
hire_date date not null,
job_title varchar(50) not null,
department_id int,
salary_id int,
foreign key (department_id) references department(department_id),
foreign key (salary_id) references salaries(salary_id)
);

ALTER TABLE departments
CHANGE depatment_name department_name VARCHAR(100) NOT NULL;

insert into departments (department_name) values
('HR'),('Engineerig'),('sales'),('Marketing');

INSERT INTO salaries (base_salary, bonus) VALUES
  (50000, 5000),
  (89999, 2778),
  (45000, 24444),
  (1112, 23343);
show tables;

INSERT INTO employees(first_name, last_name, email, phone_number, hire_date, job_title, department_id, salary_id)
VALUES ('john', 'smith', 'john.doe@example.com', '123-456-7890', '2021-06-23', 'software engineer', 2, 2);

select * from employees
