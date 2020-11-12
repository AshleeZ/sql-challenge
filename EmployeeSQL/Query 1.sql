SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,e.sex
	,s.salary
FROM
	employees e
LEFT JOIN salaries s
ON s.emp_no = e.emp_no
ORDER BY "emp_no" ASC