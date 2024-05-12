# Write your MySQL query statement below
Select tb1.name from (Select a.name, count(a.id) as cid from Employee a left join employee b on a.id=b.managerId
group by a.id)tb1 where tb1.cid>=5