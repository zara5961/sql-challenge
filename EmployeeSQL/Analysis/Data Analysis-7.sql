-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM departments;
-- The department numbers for Sales and Development departments are d007 and d005, to have conditions
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd005' or departments.dept_no = 'd007';
