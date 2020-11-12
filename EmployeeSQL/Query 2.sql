SELECT
	e.first_name
	,e.last_name
	,e.hire_date
FROM
	employees e
WHERE hire_date LIKE '%1986'
ORDER BY "emp_no" ASC