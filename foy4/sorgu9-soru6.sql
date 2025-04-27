create table employee (
    emp_id int primary key,
    emp_name varchar(50) not null,
    emp_email varchar(100) unique,
    emp_salary decimal(10,2) check (emp_salary > 0)
);
