use employees_db;

SELECT  e.first_name,
		e.last_name,
        t.title,
        s.salary,
		de.dept_no,
        d.dept_name,
        m.first_name,
        m.last_name
                
FROM 
	employees e
    inner join titles t on e.emp_no = t.emp_no
	inner join salaries s on e.emp_no = s.emp_no
    inner join dept_emp de on e.emp_no = de.emp_no
    inner join departments d on de.dept_no = d.dept_no
	inner join dept_manager dm on d.dept_no = dm.dept_no
    inner join employees m on dm.emp_no = m.emp_no
WHERE
	t.from_date < '1990-06-18' and t.to_date > '1990-06-18'
    and t.title = 'Senior Engineer'
    and s.from_date < '1990-06-18'and s.to_date > '1990-06-18'
    and de.from_date < '1990-06-18' and de.to_date > '1990-06-18'