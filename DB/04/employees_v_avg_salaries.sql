USE `employees`;
/*
1. Выбрать среднюю зарплату по отделам.
*/
CREATE  
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `employees`.`v_avg_salaries` AS
    SELECT 
        `de`.`dept_no` AS `dept_no`,
        `d`.`dept_name` AS `dept_name`,
        AVG(`s`.`salary`) AS `avg(s.salary)`
    FROM
        ((`employees`.`dept_emp` `de`
        JOIN `employees`.`departments` `d` ON ((`d`.`dept_no` = `de`.`dept_no`)))
        JOIN `employees`.`salaries` `s` ON ((`s`.`emp_no` = `de`.`emp_no`)))
    WHERE
        (`s`.`to_date` = '9999-01-01')
    GROUP BY `de`.`dept_no`;