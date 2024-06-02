# Write your MySQL query statement below
Select a.employee_id,a.name,b.reports_count,b.average_age from Employees a JOIN
(Select reports_to as employee_id,count(employee_id) as reports_count,round(avg(age),0) as average_age from Employees
where reports_to is not null
group by reports_to) b
ON a.employee_id=b.employee_id
Order by a.employee_id