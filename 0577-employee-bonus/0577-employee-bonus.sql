# Write your MySQL query statement below
Select a.name, b.bonus from Employee a LEFT JOIN Bonus b on a.empId=b.empID
where b.bonus<1000 or b.bonus IS NULL