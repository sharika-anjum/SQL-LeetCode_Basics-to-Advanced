# Write your MySQL query statement below
Select product_name,year,price from Sales a
LEFT JOIN Product b on a.product_id=b.product_id
