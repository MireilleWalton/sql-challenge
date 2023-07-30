-- DA_Q1 - List the employee number, last name, first name, sex, and salary of each employee.
--CREATE VIEW staff_salaries AS
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
	LEFT JOIN salaries s 
	ON e.emp_no=s.emp_no	

-- List the first name, last name, and hire date for the employees who were hired in 1986.
--CREATE VIEW Employees_Hired_1986 AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986'

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
--CREATE VIEW Department_Managers AS
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
	LEFT JOIN departments d
	ON dm.dept_no=d.dept_no	
	LEFT JOIN employees e
	ON dm.emp_no=e.emp_no	

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
--CREATE VIEW Departments_Employees_All AS
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
	LEFT JOIN departments d
	ON de.dept_no=d.dept_no	
	LEFT JOIN employees e
	ON de.emp_no=e.emp_no		
	
-- List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-- CREATE VIEW Records_HerculesB AS
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name.
-- CREATE Departments_Employees_Sales AS
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d
	LEFT JOIN dept_emp de
	ON de.dept_no=d.dept_no	
	LEFT JOIN employees e
	ON de.emp_no=e.emp_no	
	WHERE d.dept_name = 'Sales'
	
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- CREATE VIEW Departments_Employees_Sales_Development AS
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d
	LEFT JOIN dept_emp de
	ON de.dept_no=d.dept_no	
	LEFT JOIN employees e
	ON de.emp_no=e.emp_no	
	WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
	
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
CREATE VIEW DA_Q1 AS
SELECT last_name, COUNT(last_name) AS "last_name count"
FROM employees
GROUP BY last_name
ORDER BY "last_name count" DESC;

	
