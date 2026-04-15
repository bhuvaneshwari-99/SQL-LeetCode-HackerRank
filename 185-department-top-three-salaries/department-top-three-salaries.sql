/* Write your PL/SQL query statement below */
select d.name as department , e.name as employee,e.salary as salary  from (select id,name,salary,departmentId ,dense_rank()
over(partition by departmentId order by salary desc ) rank from employee )e
join department d
on e.departmentId = d.id
where e.rank <=3;