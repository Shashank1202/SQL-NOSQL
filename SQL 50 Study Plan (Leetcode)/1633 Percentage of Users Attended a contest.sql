#problem link:

#https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select
contest_id,
round(count( user_id)*100/(select count(user_id)from users),2)as percentage
from register
group by contest_id
order by percentage desc, contest_id;