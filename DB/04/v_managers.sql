CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_managers` AS
    SELECT 
        `e`.`first_name` AS `first_name`,
        `e`.`last_name` AS `last_name`,
        `d`.`dept_name` AS `dept_name`
    FROM
        ((`employees` `e`
        JOIN `dept_manager` `dm` ON ((`dm`.`emp_no` = `e`.`emp_no`)))
        JOIN `departments` `d` ON ((`dm`.`dept_no` = `d`.`dept_no`)))
    WHERE
        (`dm`.`to_date` > NOW())