use `employees`;

select e.emp_no, e.first_name, e.last_name, s.salary max_salary
from salaries s
	left join employees e 
		on e.emp_no = s.emp_no
order by s.salary desc
limit 0,1;