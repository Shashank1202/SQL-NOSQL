#problem Link:
# https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select id, movie, description, rating
from cinema
where id%2!=0 and description!='boring'
group by rating
order by rating desc;
