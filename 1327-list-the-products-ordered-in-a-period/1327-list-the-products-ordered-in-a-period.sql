# Write your MySQL query statement below
Select a.product_name,b.unit from Products a JOIN
(Select product_id,order_date,sum(unit) as unit from Orders
where order_date LIKE '2020-02%'
group by product_id
having unit >=100)b
on a.product_id=b.product_id
