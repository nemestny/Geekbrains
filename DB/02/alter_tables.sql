USE `geodata`;

ALTER TABLE `_countries` DROP COLUMN `title_cz`;
ALTER TABLE `_countries` DROP COLUMN `title_lv`;
ALTER TABLE `_countries` DROP COLUMN `title_lt`;
ALTER TABLE `_countries` DROP COLUMN `title_ja`;
ALTER TABLE `_countries` DROP COLUMN `title_pl`;
ALTER TABLE `_countries` DROP COLUMN `title_it`;
ALTER TABLE `_countries` DROP COLUMN `title_fr`;
ALTER TABLE `_countries` DROP COLUMN `title_de`;
ALTER TABLE `_countries` DROP COLUMN `title_pt`;
ALTER TABLE `_countries` DROP COLUMN `title_es`;
ALTER TABLE `_countries` DROP COLUMN `title_en`;
ALTER TABLE `_countries` DROP COLUMN `title_be`;
ALTER TABLE `_countries` DROP COLUMN `title_ua`;

ALTER TABLE `_countries` CHANGE COLUMN `country_id` `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE `_countries` CHANGE COLUMN `title_ru` `title` VARCHAR(150) NOT NULL;

ALTER TABLE `_countries` ADD INDEX `country_title` (`title` ASC);

ALTER TABLE `_regions` DROP COLUMN `title_cz`;
ALTER TABLE `_regions` DROP COLUMN `title_lv`;
ALTER TABLE `_regions` DROP COLUMN `title_lt`;
ALTER TABLE `_regions` DROP COLUMN `title_ja`;
ALTER TABLE `_regions` DROP COLUMN `title_pl`;
ALTER TABLE `_regions` DROP COLUMN `title_it`;
ALTER TABLE `_regions` DROP COLUMN `title_fr`;
ALTER TABLE `_regions` DROP COLUMN `title_de`;
ALTER TABLE `_regions` DROP COLUMN `title_pt`;
ALTER TABLE `_regions` DROP COLUMN `title_es`;
ALTER TABLE `_regions` DROP COLUMN `title_en`;
ALTER TABLE `_regions` DROP COLUMN `title_be`;
ALTER TABLE `_regions` DROP COLUMN `title_ua`;

ALTER TABLE `_regions` CHANGE COLUMN `region_id` `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE `_regions` CHANGE COLUMN `title_ru` `title` VARCHAR(150) NOT NULL;

ALTER TABLE `_regions` ADD INDEX `region_title` (`title` ASC);
ALTER TABLE `_regions` ADD INDEX `region_country_key_idx` (`country_id` ASC);

ALTER TABLE `_regions` 
ADD CONSTRAINT `region_country_key`
  FOREIGN KEY (`country_id`)
  REFERENCES `geodata`.`_countries` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `_cities` DROP COLUMN `region_cz`;
ALTER TABLE `_cities` DROP COLUMN `area_cz`;
ALTER TABLE `_cities` DROP COLUMN `title_cz`;
ALTER TABLE `_cities` DROP COLUMN `region_lv`;
ALTER TABLE `_cities` DROP COLUMN `area_lv`;
ALTER TABLE `_cities` DROP COLUMN `title_lv`;
ALTER TABLE `_cities` DROP COLUMN `region_lt`;
ALTER TABLE `_cities` DROP COLUMN `area_lt`;
ALTER TABLE `_cities` DROP COLUMN `title_lt`;
ALTER TABLE `_cities` DROP COLUMN `region_ja`;
ALTER TABLE `_cities` DROP COLUMN `area_ja`;
ALTER TABLE `_cities` DROP COLUMN `title_ja`;
ALTER TABLE `_cities` DROP COLUMN `region_pl`;
ALTER TABLE `_cities` DROP COLUMN `area_pl`;
ALTER TABLE `_cities` DROP COLUMN `title_pl`;
ALTER TABLE `_cities` DROP COLUMN `region_it`;
ALTER TABLE `_cities` DROP COLUMN `area_it`;
ALTER TABLE `_cities` DROP COLUMN `title_it`;
ALTER TABLE `_cities` DROP COLUMN `region_fr`;
ALTER TABLE `_cities` DROP COLUMN `area_fr`;
ALTER TABLE `_cities` DROP COLUMN `title_fr`;
ALTER TABLE `_cities` DROP COLUMN `region_de`;
ALTER TABLE `_cities` DROP COLUMN `area_de`;
ALTER TABLE `_cities` DROP COLUMN `title_de`;
ALTER TABLE `_cities` DROP COLUMN `region_pt`;
ALTER TABLE `_cities` DROP COLUMN `area_pt`;
ALTER TABLE `_cities` DROP COLUMN `title_pt`;
ALTER TABLE `_cities` DROP COLUMN `region_es`;
ALTER TABLE `_cities` DROP COLUMN `area_es`;
ALTER TABLE `_cities` DROP COLUMN `title_es`;
ALTER TABLE `_cities` DROP COLUMN `region_en`;
ALTER TABLE `_cities` DROP COLUMN `area_en`;
ALTER TABLE `_cities` DROP COLUMN `title_en`;
ALTER TABLE `_cities` DROP COLUMN `region_be`;
ALTER TABLE `_cities` DROP COLUMN `area_be`;
ALTER TABLE `_cities` DROP COLUMN `title_be`;
ALTER TABLE `_cities` DROP COLUMN `region_ua`;
ALTER TABLE `_cities` DROP COLUMN `area_ua`;
ALTER TABLE `_cities` DROP COLUMN `title_ua`;
ALTER TABLE `_cities` DROP COLUMN `region_ru`;
ALTER TABLE `_cities` DROP COLUMN `area_ru`;

ALTER TABLE `_cities` CHANGE COLUMN `city_id` `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE `_cities` CHANGE COLUMN `title_ru` `title` VARCHAR(150) NOT NULL;

ALTER TABLE `_cities` ADD INDEX `city_title` (`title` ASC);
ALTER TABLE `_cities` ADD INDEX `city_country_key_idx` (`country_id` ASC);
ALTER TABLE `_cities` ADD INDEX `city_region_key_idx` (`region_id` ASC);

ALTER TABLE `_cities` 
ADD CONSTRAINT `city_country_key`
  FOREIGN KEY (`country_id`)
  REFERENCES `geodata`.`_countries` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `_cities`  
ADD CONSTRAINT `city_region_key`
  FOREIGN KEY (`region_id`)
  REFERENCES `geodata`.`_regions` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
