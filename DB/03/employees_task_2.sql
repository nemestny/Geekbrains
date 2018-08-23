use `employees`;

select e.emp_no, e.first_name, e.last_name, max(s.salary)
from employees e
	left join salaries s
		on e.emp_no = s.emp_no;