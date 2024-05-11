# Write your MySQL query statement below
Select a.customer_id,count(a.visit_id) as count_no_trans from Visits a LEFT JOIN Transactions b on
a.visit_id=b.visit_id where b.visit_id IS NULL
group by a.customer_id