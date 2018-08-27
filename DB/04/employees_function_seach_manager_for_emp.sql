USE `employees`;
/*
	2. Создать функцию, которая найдет менеджера по имени и фамилии.
    Поиск менеджера для указанного сотрудника.
*/
DROP function IF EXISTS `manager_for_emp`;

DELIMITER $$
USE `employees`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `manager_for_emp`(emp_first_name varchar(16),emp_last_name varchar(16)) RETURNS varchar(40) CHARSET latin1
BEGIN 
	declare emp_dept_no char(4);
    set emp_dept_no = (
		select de.dept_no from employees e
		join dept_emp de
		on de.emp_no = e.emp_no
		where e.first_name = emp_first_name and e.last_name = emp_last_name
		and de.to_date > now()
    );
RETURN (
	select concat(e.first_name,' ', e.last_name) as manager
	from dept_manager dm
	join employees e
	on dm.emp_no = e.emp_no
	join departments d
	on dm.dept_no = d.dept_no
	where dm.dept_no = emp_dept_no and
	dm.to_date > now()
);
END$$

DELIMITER ;

