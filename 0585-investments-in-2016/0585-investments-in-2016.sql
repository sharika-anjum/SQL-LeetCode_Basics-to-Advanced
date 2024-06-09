# Write your MySQL query statement below
select round(sum(tiv_2016), 2) as tiv_2016
from Insurance i
where tiv_2015 in (select tiv_2015 
                    from Insurance ins
                    where ins.pid != i.pid)
and (lat, lon) not in (select lat, lon
                        from Insurance ins
                        where ins.pid != i.pid)