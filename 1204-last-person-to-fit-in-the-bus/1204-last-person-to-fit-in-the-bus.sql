# Write your MySQL query statement below
Select person_name 
from (Select *, sum(weight) over(order by turn) as total_wt from Queue) as table1
where total_wt<=1000 
order by turn desc limit 1;