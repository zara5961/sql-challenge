-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT * FROM departments;
-- Check the department number of Sales department which is d007 to make condition
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007';
