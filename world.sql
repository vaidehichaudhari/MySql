use world;
SELECT Name, Population FROM Country LIMIT 0, 1000;
select Name ,population from country 
where Population>50000000;
select Name ,population from country
order by population desc;
select Name ,population from country
order by population desc
limit 5;
select name from city where countrycode='JPN';
select name,population from country where Population>100000000;
select name,population from city where Population between 1000000 and 5000000;
select sum(population) as totalpopulation from country
where continent='Asia';
select avg(population) as averagepopulation from city
where countrycode='USA';
select continent,AVG(LifeExpectancy)As averagelifeexpectancy from country
group by continent;
select continent ,count(*)as numberofcountries from country
group by continent;
select city.Name as cityName , country.Name  as countryname
from city
join country on city.countrycode = country.code;

select country.Name as countryname, countrylanguage.Language
from countrylanguage
join country on countrylanguage.CountryCode=country.code;

select country.name as countryName ,countrylanguage.Language
from countrylanguage
join country on countrylanuguage.countrycode=country.Code;

select name,population from country where population=(select max(population)from country);
select name,population from country where population>(select avg(population)from city);
select name from city where name like '%york';
update city 
set population=population *1.10
where countrycode='JPN';

update country set continent='Oceania' where name='Australia';
-- delete from city where population <500;