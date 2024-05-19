# Write your MySQL query statement below
SELECT p.project_id, IFNULL(ROUND(SUM(e.experience_years)/ count(p.project_id),2),0) AS average_years
FROM Project p JOIN Employee e
ON p.employee_id = e.employee_id
group by project_id