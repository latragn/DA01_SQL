-- Baitap1
select name from city
where population >120000 and countrycode ='USA'
-- Baitap2
select * from city
where countrycode ='JPN'
-- Baitap3
SELECT city, state FROM STATION
  -- Baitap4
select distinct city from station
where city like 'u%' or city like 'a%' or city like 'e%' or city like 'o%' or city like 'i%'
-- Baitap5
select distinct city from station
where city like '%u' or city like '%a' or city like '%e' or city like '%o' or city like '%i'
-- Baitap6
select distinct city from station
where not (city like 'u%' or city like 'a%' or city like 'e%' or city like 'o%' or city like 'i%')
-- Baitap7
select name from employee
order by name ASC
-- Baitap8
select name from employee
where salary >2000 and  months <10
-- Baitap9
select product_id from products
where low_fats ='Y'
and recyclable = 'Y'
  -- Baitap10
select name from Customer
where not referee_id =2
ORDER BY name ASC
-- Baitap11
select name from world
where area >=3000000  and population >=25000000
order by name ASC
-- Baitap12
select * from views
where viewer_id >=1
order by author_id ASC
  -- Baitap13 -- Bài này web lỗi nên t không submit được
SELECT part, assembly_step FROM parts_assembly
where not part BETWEEN '01/22/2022 00:00:00'and '02/22/2022 00:00:00'
-- Baitap14
select * from lyft_drivers;
where yearly_salary <=30000 OR yearly_salary >70000
-- Baitap15
select advertising_channel from uber_advertising
where money_spent >100000
