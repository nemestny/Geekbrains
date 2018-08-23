use `employees`;

select de.dept_no, d.dept_name, count(de.emp_no)
from dept_emp de
left join departments d
	on d.dept_no = de.dept_no
where de.to_date = '9999-01-01'
group by de.dept_no;