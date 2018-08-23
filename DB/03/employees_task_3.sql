use `employees`;

delete from employees
where emp_no = (
	select emp_no from salaries
    order by salary desc
    limit 0,1
);