USE `employees`;
/*
	2. Выбрать максимальную зарплату у сотрудника.
*/
CREATE
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_emp_with_max_salary` AS
    SELECT 
        `e`.`emp_no` AS `emp_no`,
        `e`.`first_name` AS `first_name`,
        `e`.`last_name` AS `last_name`,
        `s`.`salary` AS `max_salary`
    FROM
        (`salaries` `s`
        JOIN `employees` `e` ON ((`e`.`emp_no` = `s`.`emp_no`)))
    ORDER BY `s`.`salary` DESC
    LIMIT 0 , 1;
