use `geodata`;

select r.title as Region, c.title as City
from _regions r
	left join _cities c
		on r.id = c.region_id
	where r.title like 'Моск%';