# Write your MySQL query statement below
Select name from Customer where coalesce(referee_id,0) <> 2