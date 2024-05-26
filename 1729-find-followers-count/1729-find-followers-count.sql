# Write your MySQL query statement below
Select user_id,count(distinct follower_id) as followers_count from Followers
group by user_id