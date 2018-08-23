use `employees`;

select de.dept_no, d.dept_name, count(de.emp_no) sum_employees, sum(s.salary) sum_salary
from dept_emp de
left join departments d
	on d.dept_no = de.dept_no
left join salaries s
	on s.emp_no = de.emp_no
where s.to_date = '9999-01-01' and de.to_date = '9999-01-01'
group by de.dept_no
order by sum_salary desc;