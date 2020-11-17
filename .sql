--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT EMPLOYEES.emp_no, EMPLOYEES.last_name, EMPLOYEES.first_name, EMPLOYEES.gender, SALARIES.salary
FROM EMPLOYEES 
JOIN SALARIES
ON EMPLOYEES.emp_no = salaries.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last, birth_date, hire_date
FROM EMPLOYEES
WHERE hire_date >= 

--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT DEPT_EMP.emp_no, EMPLOYEES.last_name, EMPLOYEES.first_name, DEPARTMENTS.dept_name,
FROM DEPT_EMP
JOIN EMPLOYEES ON DEPT_EMP.emp_no = EMPLOYEES.emp_no
JOIN DEPARTMENTS ON DEPT_EMP.dept_no = DEPARTMENTS.dept_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex,
FROM EMPLOYEES
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.


--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;