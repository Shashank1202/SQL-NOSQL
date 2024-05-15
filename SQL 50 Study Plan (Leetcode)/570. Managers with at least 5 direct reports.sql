#Problem Link: 
#https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below

#Group manager_ID
#Counting
#Filter names  >5
#finding that name

select e.name
from employee e
join (
    select managerId, count(*) as direct_reports
    from employee
    group by managerId
)as report_counts
on e.id= report_counts.managerId
where report_counts.direct_reports>=5;
