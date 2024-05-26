# Write your MySQL query statement below
Select class from (Select class, count(distinct student) as c from Courses 
group by class) as p where p.c>=5