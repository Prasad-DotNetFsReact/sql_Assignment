
-----question1--------
--Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.--

select first_name AS "empoyee_name" from worker

----Q2------
--Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.--

select UPPER(first_name) AS "empoyee_name" from worker


-------Q3-------------------
--Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.--
--insert into worker values('7','madan',30000, 09/09/2024,'mech')

select DISTINCT Deparment from worker


----Q4------------------

--Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

select LEFT(first_name,3) from worker

--Q5
--Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

select CHARINDEX('a',first_name) from worker

--Q6
--Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

select RTRIM(first_name) AS "trimmed_column" from worker

--Q7
--Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.

select LTRIM(Deparment) AS "trimmed_column" from worker

--Q8
--Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

select DISTINCT Deparment, LEN(Deparment) AS dept_length from worker

--Q9
--Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’
select REPLACE(first_name, 'a','A') AS replaced_first from worker

--Q10
--Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate th

--select * from worker

--select  first_name +' ' +last_name AS new_col from worker

 
--Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker
 order by first_name asc

 
--Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

select * from worker 
order by first_name asc,Deparment desc
 
--Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from worker
where first_name= 'sid' and first_name= 'ketan'

 
--Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from worker
where first_name != 'sid' and first_name != 'ketan'

 
--Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select * from worker
where Deparment = 'mech' 


--Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

select * from worker
where first_name like '%a%'


--Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker
where first_name like '%a'
 
--Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker
where first_name like '%h'

--Q19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker
where salary between 10000 and 40000
 
--Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.

select * from worker
where Joining_date = 01/01/1900
--Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’
select *, count(fir) from worker group by deparment where Deparment = 'IT'
