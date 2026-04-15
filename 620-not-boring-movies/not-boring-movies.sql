/* Write your PL/SQL query statement below */
SELECT *
FROM Cinema
WHERE MOD(id, 2) = 1
  AND LOWER(description) <> 'boring'
ORDER BY rating DESC;