SELECT * FROM employees.employees;
SELECT * FROM employees.departments;
SELECT * FROM employees.dept_emp;
SELECT * FROM employees.dept_manager;
SELECT * FROM employees.salaries;
SELECT * FROM employees.titles;

-- zlaczenie dwoch tabel ze soba, klucz właściwy i klucz obcy z tabeli
select * from employees join titles on employees.emp_no = titles.emp_no;

select * from employees where hire_date > "1990";

select count(gender) from employees where gender = "F";

select first_name, last_name, dept_name from 
	employees e join dept_emp de on e.emp_no=de.emp_no
	join departments d on de.dept_no=d.dept_no;
    
select first_name, last_name, birth_date  from employees 
	where birth_date = (select max(birth_date) from employees where gender = "F")
    and gender = "F";
    
select * from employees e join titles t on e.emp_no=t.emp_no where e.emp_no = "10009'";

select first_name, last_name, title from employees join titles on employees.emp_no = titles.emp_no LIMIT 5;
select first_name, last_name, title from employees e join titles t on e.emp_no = t.emp_no where t.to_date = "9999-01-01";

select * from employees e join salaries s on e.emp_no=s.emp_no
	where s.salary=(select max(salary) from salaries);

select first_name, last_name, salary from 
	employees e join salaries s on e.emp_no=s.emp_no
    where salary = (select max(salary) from employees e join salaries s on e.emp_no=s.emp_no)
union
select first_name, last_name, salary from 
	employees e join salaries s on e.emp_no=s.emp_no
    where salary = (select min(salary) from employees e join salaries s on e.emp_no=s.emp_no);
    
select DISTINCT title from titles;




