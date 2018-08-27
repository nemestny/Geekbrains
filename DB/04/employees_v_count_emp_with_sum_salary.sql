USE `employees`;
/*
	5. Найти количество сотрудников в отделах и посмотреть, сколько всего денег получает отдел.
*/
CREATE
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_count_emp_with_sum_salary` AS
    SELECT 
        `de`.`dept_no` AS `dept_no`,
        `d`.`dept_name` AS `dept_name`,
        COUNT(`de`.`emp_no`) AS `sum_employees`,
        SUM(`s`.`salary`) AS `sum_salary`
    FROM
        ((`dept_emp` `de`
        JOIN `departments` `d` ON ((`d`.`dept_no` = `de`.`dept_no`)))
        JOIN `salaries` `s` ON ((`s`.`emp_no` = `de`.`emp_no`)))
    WHERE
        ((`s`.`to_date` = '9999-01-01')
            AND (`de`.`to_date` = '9999-01-01'))
    GROUP BY `de`.`dept_no`
    ORDER BY `sum_salary` DESC;
