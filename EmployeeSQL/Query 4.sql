SELECT
	de.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
FROM
	dept_emp de
LEFT JOIN employees e
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
ORDER BY "emp_no" ASC