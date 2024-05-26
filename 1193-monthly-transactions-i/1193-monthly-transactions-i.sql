# Write your MySQL query statement below
Select
    substr(trans_date,1,7) as month, 
    country, count(distinct id) as trans_count,
    sum(if(state='approved',1,0))  as approved_count,
    sum(amount) as trans_total_amount,
    sum(if(state='approved',(amount),0)) as approved_total_amount
    
from Transactions
group by month,country


