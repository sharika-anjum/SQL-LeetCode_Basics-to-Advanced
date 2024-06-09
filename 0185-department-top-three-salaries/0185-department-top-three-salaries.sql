# Write your MySQL query statement below
Select a.Department, a.Employee, a.Salary from (Select d.name as Department,e.name as Employee,e.Salary,dense_rank() over(partition by d.name order by e.salary desc) as r from Employee e JOIN Department d on e.departmentId=d.id)a
where a.r<=3