-- Baitap1
select distinct name
from STUDENTS 
right ('name',3)
where marks > 75
order by name 
-- Baitap2
select user_id, name
UPPER (LEFT (NAME,1)) AS First_character
LOWER (RIGHT (NAME,4)) AS The_rest
First_character || the_rest AS new_name
from Users
Order by new_name
-- Baitap345 loi web khong xem duoc  
-- Baitap6
  -- Write your PostgreSQL query statement below
select tweet_id
length (tweet_id) as invalid_tweets
from Tweets
where length (tweet_id)> 15
-- Baitap7
  select activity_date, user_id
count (user_id)
from Activity
where activity_date between '2019-06-27' and '2019-07-27'
having count (user_id)>1
order by user_id 
-- Baitap8
select id,
sum (id) AS total_employees
from employees
where joining_date between '2022-01-01' and '2022-07-31'
group by id
-- Baitap9
select first_name,
position ('a' in first_name)
from worker
where first_name = 'Amitah'
  -- Baitap10
select country,title
substring (title from position (' ' in email)-1)
position (' ' in email)-1)
from winemag_p2
where country = 'Macedonia'
