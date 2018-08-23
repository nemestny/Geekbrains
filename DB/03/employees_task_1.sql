use `employees`;

select d.dept_name, avg(s.salary) avg_salary
from departments d
	left join dept_emp de
		on d.dept_no = de.dept_no
	left join salaries s
		on de.emp_no = s.emp_no
group by de.dept_no
order by avg_salary desc;