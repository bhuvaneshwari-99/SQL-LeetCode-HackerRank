/* Write your PL/SQL query statement below */
select e.name as employee
from employee e 
join employee m
ON e.managerid = m.id 
where e.salary > m.salary;