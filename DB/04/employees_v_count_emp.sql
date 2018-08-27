USE `employees`;
/*
	4. Посчитать количество сотрудников во всех отделах.
*/
CREATE
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_count_emp` AS
    SELECT 
        `de`.`dept_no` AS `dept_no`,
        `d`.`dept_name` AS `dept_name`,
        COUNT(`de`.`emp_no`) AS `count(de.emp_no)`
    FROM
        (`dept_emp` `de`
        JOIN `departments` `d` ON ((`d`.`dept_no` = `de`.`dept_no`)))
    WHERE
        (`de`.`to_date` = '9999-01-01')
    GROUP BY `de`.`dept_no`;
