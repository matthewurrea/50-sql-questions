Reference: https://www.techbeamers.com/sql-query-questions-answers-for-practice/#sql-scripts

--Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

SELECT FIRST_NAME AS WORKER_NAME
FROM Worker;

--Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.

SELECT upper(FIRST_NAME) 
FROM Worker;

--Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
-- DISTINCT ~ UNIQUE

SELECT distinct DEPARTMENT
FROM Worker;

--Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
-- substing(attribute,beginning of index, end of index)

SELECT substring(FIRST_NAME,1,3)
FROM WORKER;

--Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
--INSTR(attribute, binary'character') from TABLE where attribute = string

SELECT INSTR(FIRST_NAME, BINARY(a))
FROM Worker
WHERE FIRST_NAME = 'Amitabh';

--Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
--RTRIM(attribute) from TABLE 

SELECT RTRIM(FIRST_NAME)
FROM Worker;

--Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
--LTRIM(attribute) from TABLE

SELECT LTRIM(DEPARTMENT)
FROM Worker;

--Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
--distinct length(attribute)

SELECT distinct length(DEPARTMENT)
FROM Worker;

--Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
--REPLACE

SELECT REPLACE(FIRST_NAME, 'a', 'A')
FROM Worker;

--Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
--CONCAT(attribute, ' ', attribute) as assigned name

SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME
FROM Worker;

--Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.

SELECT * 
FROM Worker 
ORDER BY FIRST_NAME ASC;

--Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

SELECT *
FROM Worker
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

--Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
-- select * from TABLE where attribute in ('Vipul', 'Satish');
SELECT *
FROM Worker
WHERE FIRST_NAME in ('Vipul', 'Satish');

--Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
--EXCLUDING command ~ NOT IN 

SELECT * 
FROM Worker 
where FIRST_NAME not in ('Vipul', 'Satish'); 

--Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

SELECT *
FROM Worker 
WHERE DEPARTMENT like 'Admin%'

--Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

SELECT * 
FROM WORKER
WHERE  FIRST_NAME like '%a%';

--Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.

SELECT * 
FROM Workers
WHERE FIRST_NAME like '%a';

--Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

SELECT * 
FROM Worker 
WHERE FIRST_NAME like '_____h';

--Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

SELECT *
FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;

--Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.

SELECT * 
FROM Worker 
WHERE year(JOINED_DATE) = 2014 and month(JOINED_DATE) = 2;

--Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.

SELECT COUNT(*) 
FROM Worker
WHERE DEPARTMENT = 'Admin';

--Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.

SELECT CONCAT(FIRST_NAME, '', LAST_NAME) AS Worker_Name, Salary
FROM Worker
WHERE WORKER_ID IN
(SELECT WORKER_ID 
FROM Worker
WHERE Salary BETWEEN 50000 AND 100000);

--Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.

SELECT DEPARTMENT, COUNT(WORKER_ID) No_Of_Workers
FROM Worker
GROUP BY DEPARTMENT
ORDER BY No_Of_Workers DESC; 

--Q-24. Write an SQL query to print details of the Workers who are also Managers.

SELECT 

--Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
--
--Q-26. Write an SQL query to show only odd rows from a table.
--
--Q-27. Write an SQL query to show only even rows from a table.
--
--Q-28. Write an SQL query to clone a new table from another table.
--
--Q-29. Write an SQL query to fetch intersecting records of two tables.
--
--Q-30. Write an SQL query to show records from one table that another table does not have.
--
--Q-31. Write an SQL query to show the current date and time.
--
--Q-32. Write an SQL query to show the top n (say 10) records of a table.
--
--Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
--
--Q-34. Write an SQL query to determine the 5th highest salary without using TOP or limit method.
--
--Q-35. Write an SQL query to fetch the list of employees with the same salary.
--
--Q-36. Write an SQL query to show the second highest salary from a table.
--
--Q-37. Write an SQL query to show one row twice in results from a table.
--
--Q-38. Write an SQL query to fetch intersecting records of two tables.
--
--Q-39. Write an SQL query to fetch the first 50% records from a table.
--
--Q-40. Write an SQL query to fetch the departments that have less than five people in it.
--
--Q-41. Write an SQL query to show all departments along with the number of people in there.
--
--Q-42. Write an SQL query to show the last record from a table.
--
--Q-43. Write an SQL query to fetch the first row of a table.
--
--Q-44. Write an SQL query to fetch the last five records from a table.
-- 
--Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
--
--Q-46. Write an SQL query to fetch three max salaries from a table.
--
--Q-47. Write an SQL query to fetch three min salaries from a table.
--
--Q-48. Write an SQL query to fetch nth max salaries from a table.
--
--Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
--
--Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
--