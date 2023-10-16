--Baitap1
select distinct city from station
where id%2=0
--Baitap2
select count(city) - count(distinct city) from station
--Baitap4
SELECT 
ROUND(Cast (sum(item_count*order_occurrences)/SUM(order_occurrences)AS Decimal),1) AS mean
FROM items_per_order;
--Baitap5
SELECT candidate_id 
FROM candidates
where skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING count (skill)=3
--Baitap6
SELECT user_id,
Date(MAX(post_date))- DATE(MIN(post_date)) as days_between
FROM posts
WHERE post_date >='2021-01-01' AND post_date <'2022-01-01'
GROUP BY user_id
HAVING COUNT(post_id)>=2
--Baitap7
SELECT card_name,
MAX(issued_amount)-MIN(issued_amount) as diffrenence
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY diffrenence DESC
--Baitap8
SELECT manufacturer,
COUNT(drug) AS drug_count,
abs (SUM(cogs-total_sales)) AS total_loss
from pharmacy_sales
where total_sales<cogs
GROUP BY manufacturer
ORDER BY total_loss DESC
--Baitap9
select * from cinema
where id%2=1 and description<>'boring'
order by rating desc
--Baitap10
select 
teacher_id,
count( distinct subject_id) as cnt
from teacher
group by teacher_id
--Baitap11
select user_id,
count(follower_id) as followers_count
from Followers
group by user_id 
order by user_id 
--Baitap12
select class from Courses
group by class
having count(student)>=5
