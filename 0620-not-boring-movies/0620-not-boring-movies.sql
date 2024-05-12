# Write your MySQL query statement below
Select * from Cinema where description not in ('boring') and mod(id,2)<>0
order by rating desc