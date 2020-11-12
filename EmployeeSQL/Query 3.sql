SELECT
	dm.dept_no
	,d.dept_name
	,dm.emp_no
	,e.last_name
	,e.first_name
FROM
	dept_manager dm
LEFT JOIN departments d
ON d.dept_no = dm.dept_no
LEFT JOIN employees e
ON e.emp_no = dm.emp_no
ORDER BY "emp_no" ASC