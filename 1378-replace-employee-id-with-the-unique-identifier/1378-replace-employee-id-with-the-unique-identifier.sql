# Write your MySQL query statement below
Select b.unique_id,a.name from Employees a
LEFT JOIN
EmployeeUNI b On a.id=b.id
