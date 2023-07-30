-- CHECK FOR DUPLICATES 

-- QUERY TABLE 'departments'
	-- Are department codes uniquey to department name?
	-- check dept_no (primary key), and dept_name - NO duplicates found - each department has a unique dept code
SELECT dept_no, COUNT(*) AS ALIAS
FROM departments
GROUP BY dept_no
HAVING COUNT(*)>1

SELECT dept_name, COUNT(*) AS ALIAS
FROM departments
GROUP BY dept_name
HAVING COUNT(*)>1

-- QUERY TABLE 'dept_emp'
	-- Are employees assigned to more than one department?  It is presumed that dept_no will duplicated many times and so is not checked
	-- check emp_no - many duplicates found indicating that employee resources may be shared across teams
	-- check emp_no & dept_emp (composite key) - NO duplicates found, unique combination confirmed

SELECT emp_no, COUNT(*) AS ALIAS
FROM dept_emp
GROUP BY emp_no
HAVING COUNT(*)>1
	
SELECT emp_no, dept_no, COUNT(*) AS ALIAS
FROM dept_emp
GROUP BY emp_no, dept_no
HAVING COUNT(*)>1

-- QUERY TABLE 'dept_manager'
	-- Can an employee manage more than one department?  Can one department have more than one manager?
	-- check col 'emp_no' - NO duplicates found indicating that an individual employee has responsibility for managing only one dept
	-- check col 'dept_no' - many duplicates found indicating a dept may have more than one manager
	-- check cols 'emp_no & dept_no' (composite key) - no duplicates found.
	
SELECT emp_no, COUNT(*) AS ALIAS
FROM dept_manager
GROUP BY emp_no
HAVING COUNT(*)>1

SELECT dept_no, COUNT(*) AS ALIAS
FROM dept_manager
GROUP BY dept_no
HAVING COUNT(*)>1

SELECT emp_no, dept_no, COUNT(*) AS ALIAS
FROM dept_manager
GROUP BY emp_no, dept_no
HAVING COUNT(*)>1

-- QUERY TABLE 'employee'
	-- Determine if each row contains data unique to each employee number
	-- check all cols groups by 'emp_no' - No duplicate entries found
	
SELECT emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date, COUNT(*) AS ALIAS
FROM employees
GROUP BY emp_no
HAVING COUNT(*)>1

-- QUERY TABLE 'salaries'
	-- Check if emp_no appears only once within the table. NO duplicates found.
	
SELECT emp_no, COUNT(*) AS ALIAS
FROM salaries
GROUP BY emp_no
HAVING COUNT(*)>1

-- QUERY TABLE 'titles'
	--Are title codes uniquey to title description? NO duplicates found
	
SELECT title_id, title, COUNT(*) AS ALIAS
FROM titles
GROUP BY title_id
HAVING COUNT(*)>1

