select * 
from `terrorist-attacks`;

describe `terrorist-attacks`;

-- generic --

select distinct Entity
from `terrorist-attacks`;

-- Total Death of different age people in different year --

select `Year`, 
sum(`Terrorist attacks`) as TerroristAtact,
sum(`Terrorism deaths`) as TerrorismDeaths,
sum(`Death Age 100+`) as `Age100++`,
sum(`Death Age: 51-99`) as `51-99`,
sum(`Death Age : 21-50`) as `21-50`,
sum(`Death Age : 11-20`) as `11-20`,
sum(`Death Age : 6-10`) as `6-10`,
sum(`Death Age :  1-5`) as `1-5`
from `terrorist-attacks`
group by `Year`
order by TerroristAtact
desc;

-- terrorist attact in year --

select `Year`, sum(`Terrorist attacks`) as MaxAttact
from `terrorist-attacks`
group by `Year`
order by `MaxAttact` desc limit 10;

-- Total Terrorist Attacks Type in Each Year --

select `Year`,
sum(`Attack method: Hijacking`) as Hijacking,
sum(`Attack method: Hostage Taking (Barricade Incident)`) as HostageTaking,
sum(`Attack method: Unarmed Assault`) as Unarmed_Assault,
sum(`Attack method: Facility/Infrastructure Attack`) as Infrastructure_Attack,
sum(`Attack method: Hostage Taking (Kidnapping)` ) as Kidnapping,
sum(`Attack method: Assassination`) as Assassination,
sum(`Attack method: Armed Assault`) as Armed_Assault,
sum(`Attack method: Bombing/Explosion`) as BombingExplosion
from `terrorist-attacks`
group by `Year`
order by `Year`desc;

-- Proportion of suicide deaths among terrorist attacks:

select sum(`Terrorist Death Type : Suicide`) / sum(`Terrorism deaths`) * 100 as suicide_deaths_proportion
from `terrorist-attacks`;

-- percentage of bombing case types 
select `Year`,
sum(`Terrorist attacks`) as SumTerroristAttact,
sum(`Attack method: Bombing/Explosion`) as BombingExplosion,
sum(`Attack method: Bombing/Explosion`) / sum(`Terrorist attacks`) * 100 as percent
from `terrorist-attacks`
group by Year
order by BombingExplosion desc limit 10;

-- Terrorist Death Type --

select `Year`, 
sum(`Terrorist Death Type : Suicide`) as `Terrorist Death : Suicide`,
sum(`Terrorist Death Type : Killed`) as `Terrorist Death Type : Killed`
from `terrorist-attacks`
group by `Year`
order by `Terrorist Death : Suicide` desc;

-- Terrorist Death Type in entity --

select `Entity`, 
sum(`Terrorist Death Type : Suicide`) as `Terrorist Death : Suicide`,
sum(`Terrorist Death Type : Killed`) as `Terrorist Death Type : Killed`
from `terrorist-attacks`
group by `Entity`
order by `Terrorist Death : Suicide` desc limit 10;


-- countries with the most terrorist attacks
select `Entity`, sum(`Terrorist attacks`) as TerroristAttact
from `terrorist-attacks`
group by `Entity`
order by TerroristAttact desc ;

-- Top 10 most death happen by terrorist attacked in Entity --

select `Entity`,
sum(`Terrorism deaths`) as TerrorismDeaths
from `terrorist-attacks`
group by `Entity`
order by TerrorismDeaths desc limit 10;

-- Total Terrorist Attacks Type in Each Entity --

select `Entity`,
sum(`Attack method: Hijacking`) as Hijacking,
sum(`Attack method: Hostage Taking (Barricade Incident)`) as HostageTaking,
sum(`Attack method: Unarmed Assault`) as Unarmed_Assault,
sum(`Attack method: Facility/Infrastructure Attack`) as Infrastructure_Attack,
sum(`Attack method: Hostage Taking (Kidnapping)` ) as Kidnapping,
sum(`Attack method: Assassination`) as Assassination,
sum(`Attack method: Armed Assault`) as Armed_Assault,
sum(`Attack method: Bombing/Explosion`) as BombingExplosion
from `terrorist-attacks`
group by `Entity`;
-- order by `Year`desc;

select *
from `terrorist-attacks`
where `Entity` = 'world'
order by `Terrorism deaths`
desc;

