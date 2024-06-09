# Write your MySQL query statement below
Select b.visited_on,b.amount,round(b.amount/7,2) as average_amount 
from (Select a.visited_on,lag(a.amount,6) over(order by a.visited_on) as nextt,
      sum(a.amount) over (Rows between 6 Preceding and current row) as amount
      from 
            (select visited_on, sum(Amount) as amount
             from Customer
             group by visited_on)a
    ) b
where b.nextt is not null

