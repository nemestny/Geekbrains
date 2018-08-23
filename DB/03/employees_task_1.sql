use `employees`;

select de.dept_no dept_no, d.dept_name, avg(s.salary)
from dept_emp de
join departments d
	on d.dept_no = de.dept_no
join salaries s
	on s.emp_no = de.emp_no
where s.to_date = '9999-01-01'
group by dept_no;