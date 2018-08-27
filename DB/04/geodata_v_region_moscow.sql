USE `geodata`;
/*
2. Выбрать все города из Московской области.
*/
CREATE  OR REPLACE VIEW `v_region_moscow` AS
select r.title as Region, c.title as City
from _regions r
	left join _cities c
		on r.id = c.region_id
	where r.title like 'Моск%';
CREATE  
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_region_moscow` AS
    SELECT 
        `r`.`title` AS `Region`, `c`.`title` AS `City`
    FROM
        (`_regions` `r`
        LEFT JOIN `_cities` `c` ON ((`r`.`id` = `c`.`region_id`)))
    WHERE
        (`r`.`title` LIKE 'Моск%');
