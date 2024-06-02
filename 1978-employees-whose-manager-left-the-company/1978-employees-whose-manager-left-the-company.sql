# Write your MySQL query statement below
Select employee_id from Employees
where manager_id not in (Select distinct(employee_id) from Employees)
and salary<30000
order by employee_id