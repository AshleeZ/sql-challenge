SELECT
	e.first_name
	,e.last_name
	,e.sex
FROM
	employees e
WHERE e.first_name = 'Hercules'
	AND e.last_name LIKE 'B%'
ORDER BY "emp_no" ASC