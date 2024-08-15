
select * from employee


--Once, the table is populated , perform following operations:

 --1. Dsiplay employee id , name , salary.

 select employee_id,name,salary from employee
 --2.Display employee id , where Employee ID  , name where NAme of EMployee ,   salary Salary f EMployee shud be displayed

 select * from employee where name = 'sid'
 
 select * from employee where salary= 15000

--3.Display  name  salary and also incremented salary for all the employees

--update employee set salary+=3000  where salary=salary
--4. Display Total salary dispursed for all the departments

select departmant, sum(salary) as sal_dep from employee group by departmant

--5. Display total salary, maximum salary, Average salary given in all the deprtments
select departmant, sum(salary) as sal_dep,max(salary) as sal_mdep,avg(salary) as sal_adep from employee group by departmant

--6. Depending uopn salary, arrange the records 

select * from employee order by salary desc

--7. Give a unique sequence to all the employees

select employee_id, name,exp, salary,departmant, row_number() over (order by employee_id) AS Unique_Sequence
from employee;

--8. Depending uopn salary, giv ranking tp all the employees
select employee_id, name,exp, salary,departmant, rank() over (order by employee_id) AS Unique_Sequence
from employee;


--9. Add one more column age in employees table

alter table employee add age int

--10. By default its value shud be 26

alter table employee add age int default 26
--select * from employee

--11. Its range is 26 - 60
-- What value will be there for the records for this column now.
-- How can u put value 26 for all the records
update employee set age=26 where age is null
select * from employee

 
--12. how many departments are there in the department
select departmant,count(departmant) from employee group by departmant

--13. Display all the names of the employees in upper case
select upper(name) from employee
--14. DIpslay only the first four alphbets from all the names
select substring(name,1,4) from employee
--15. DIsplay the position of a in all the names
select name, charindex('a',name) as position from employee
--16.Display total number of employees working in every department
select departmant,count(*) as num_emp from employee group by departmant


--17.Display total number of employees working for every Manager

select Manager,count(*) as num_emp from employee group by Manager
--18. DIsplay all the recirds where employee ID is 101, 102 or 110
select * from employee
--19. GIve all records where empl id is in between 101 and 100