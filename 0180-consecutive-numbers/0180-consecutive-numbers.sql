# Write your MySQL query statement below
select 
    distinct logs1.num as ConsecutiveNums 
from 
    logs logs1 join logs logs2 join logs logs3
on 
    logs1.id = logs2.id - 1
    and
    logs2.id = logs3.id - 1
where 
    logs1.num = logs2.num 
    and 
    logs2.num = logs3.num;
