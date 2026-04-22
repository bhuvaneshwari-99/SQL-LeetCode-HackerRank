/* Write your PL/SQL query statement below */
SELECT d.name AS Department,
       e.name AS Employee,
       e.salary AS Salary
FROM (
        SELECT id,
               name,
               salary,
               departmentId,
               DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) rnk
        FROM Employee
     ) e
JOIN Department d
ON e.departmentId = d.id
WHERE e.rnk = 1;
