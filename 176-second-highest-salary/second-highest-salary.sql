/* Write your PL/SQL query statement below */
SELECT MAX(salary) AS SecondHighestSalary
FROM (
    select salary ,dense_rank() over(order by salary desc )as rank from employee
)ranked where rank = 2;
