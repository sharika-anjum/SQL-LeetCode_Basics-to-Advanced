# Write your MySQL query statement below
Select max(a.num) as num from (Select num, count(num) as c from MyNumbers
group by num)as a where a.c=1
