# problem link
# https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

select E.name, B.bonus
from Employee E left join Bonus B on E.empID=B.empID
where bonus < 1000 or bonus is null;
