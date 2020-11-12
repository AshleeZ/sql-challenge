SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
FROM
	employees e
LEFT JOIN dept_manager dm
ON dm.emp_no = e.emp_no
LEFT JOIN dept_emp de
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON (d.dept_no = dm.dept_no) OR (d.dept_no = de.dept_no)
WHERE d.dept_name = 'Sales'
	OR d.dept_name = 'Development'
ORDER BY "emp_no" ASC