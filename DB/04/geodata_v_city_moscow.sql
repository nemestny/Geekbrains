USE `geodata`;
/*
	1. Сделать запрос, в котором мы выберем все данные о городе – регион, страна.
	Город - Москва
*/
CREATE  
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_city_moscow` AS
    SELECT 
        `co`.`title` AS `Country`,
        `re`.`title` AS `Region`,
        `ci`.`title` AS `City`
    FROM
        ((`_countries` `co`
        LEFT JOIN `_cities` `ci` ON ((`co`.`id` = `ci`.`country_id`)))
        LEFT JOIN `_regions` `re` ON ((`re`.`id` = `ci`.`region_id`)))
    WHERE
        (`ci`.`title` = 'Москва');
