# Write your MySQL query statement below
Select product_id,new_price as price from (Select *, row_number() over(partition by product_id order by change_date desc) as rn from Products
where change_date<='2019-08-16') b where rn=1
UNION
Select distinct product_id, 10 as price from Products
where product_id not in (Select distinct product_id from Products
where change_date<='2019-08-16')