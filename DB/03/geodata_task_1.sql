use `geodata`;

select co.title as Country, re.title as Region, ci.title as City
from _countries co
	left join _regions re
		on co.id = re.country_id
	left join _cities ci
		on re.id = ci.region_id
	where ci.title = 'Москва';