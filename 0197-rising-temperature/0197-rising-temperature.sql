# Write your MySQL query statement below
Select b.id from weather a join weather b on a.recorddate=b.recorddate - Interval 1 day
where a.temperature<b.temperature