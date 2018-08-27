USE `employees`;
/*
	3. Создать триггер, который при добавлении нового сотрудника будет выплачивать ему
	вступительный бонус, занося запись в таблицу salary.
*/
DELIMITER $$

DROP TRIGGER IF EXISTS employees.employees_AFTER_INSERT$$
USE `employees`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `employees`.`employees_AFTER_INSERT` AFTER INSERT ON `employees` FOR EACH ROW
BEGIN
	insert into salaries
    values (NEW.emp_no,10000,current_date(),current_date());
END$$
DELIMITER ;