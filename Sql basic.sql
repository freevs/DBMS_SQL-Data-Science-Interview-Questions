select * from empl;

select * from department;

select * from salary;

/*Write a query in SQL to display the unique designations for the employees.*/
select distinct(job_name) from empl;

/*Write a query in SQL to list the emp_name and salary is increased by 15% and expressed as no.of Dollars.*/
select emp_name, concat('$', format(1.15*salary,2)) sal from empl;

/*Write a query in SQL to produce the output of employees name and job name as a fromat of "Employee & Job"*/
select concat(emp_name," ", " ",job_name) Employee from empl;

/*Write a query in SQL to produce the output of employees as follows.Employee JONAS(manager).*/
select concat(emp_name, '(',job_name,')') Employee from empl;

/*Write a query in SQL to list the employees with Hire date in the format like February 22, 1991.*/
select emp_name, date_format(hiredate, "%M %e %Y") hiredate from empl;

/*Write a query in SQL to count the no. of characters with out considering the spaces for each name*/
select emp_name, length(emp_name) from empl;

/*Write a query in SQL to list the emp_id,salary, and commission of all the employees.*/
select emp_id, salary, commission from empl;

/*Write a query in SQL to display the unique department with jobs*/
select distinct(dept_id), job_name from empl;

/*Write a query in SQL to list the employees who does not belong to department 2001.*/
select emp_name, dept_id from empl where dept_id != 2001;

/*Write a query in SQL to list the employees who joined before 1991.*/
SELECT * FROM empl WHERE hiredate < ('1991-01-01');

/*Write a query in SQL to display the average salaries of all the employees who works as ANALYST.*/
select emp_name, avg(salary) from empl where job_name ='ANALYST';

/*Write a query in SQL to display the details of the employee BLAZE*/
select * from empl where emp_name ='BLAZE';

/*Write a query in SQL to display all the details of the employees whose commission is more than their salary.*/
select *from empl where commission > salary;

/*Write a query in SQL to list the employees whose salary is more than 3000 after giving 25% increment.*/
select * from empl where salary +(salary*0.25)>3000;

/*Write a query in SQL to list the name of the employees, those having six characters to their name.*/
select emp_name from empl where emp_name like '______';

select emp_name from empl where length(emp_name)=6;

/*Write a query in SQL to list the employees who joined in the month January*/
select * from empl where hiredate like '%01%';

/*Write a query in SQL to list the employees who have joined in the year 1991*/
select * from empl where hiredate like '1991%';

/*Write a query in SQL to list the name, id, hire_date, and salary of all the employees joined before 1 apr 91*/
select emp_name, emp_id, hiredate, salary from empl where hiredate < ('1991-04-01');

/*Write a query in SQL to list the employee name, and job_name who are not working under a manager.*/
select emp_name, job_name from empl where manager_id is null;

/*Write a query in SQL to list all the employees joined on 1st may 91*/
select * from empl where hiredate = ('1991-05-01');

/*Write a query in SQL to list the id, name, salary, and experiences of all the employees working for the manger 68319*/
SELECT emp_name, format(DATEDIFF( SYSDATE(), hiredate )/365, 1) experience FROM empl where manager_id= 68319;

/*Write a query in SQL to list the id, name, salary, and experience of all the employees who earn more than 100 as daily salary. */
SELECT emp_name, format(DATEDIFF( SYSDATE(), hiredate )/365, 1) experience FROM empl where salary/30 >100;

/*Write a query in SQL to list those employees whose salary is an odd value*/
SELECT * FROM empl WHERE mod(salary,2) = 1;

/*Write a query in SQL to list those employees whose salary contain only 3 digits.*/
select * from empl where salary like '___';

/*Write a query in SQL to list the employees who joined in the month of APRIL.*/
select * from empl where hiredate like '%04%';

/*Write a query in SQL to list the employees of department id 3001 or 1001 joined in the year 1991.*/
select * from empl where dept_id in (3001,1001) and hiredate like '1991%';

/*Write a query in SQL to list all the employees of designation CLERK in department no 2001.*/
select * from empl where job_name = 'CLERK' and dept_id = 2001;

/*Write a query in SQL to list the ID, name, salary, and job_name of the employees for 
1. Annual salary is below 34000 but receiving some commission which should not be more than the salary,
2. And designation is SALESMAN and working for department 3001.*/
SELECT emp_id, emp_name, salary, job_name FROM empl
WHERE 12*salary < 34000  AND commission < salary AND job_name = 'SALESMAN' AND dept_id = 3001;

/*Write a query in SQL to list the employees who are either CLERK or MANAGER*/
select * from empl where job_name IN ('CLERK', 'MANAGER');

/*Write a query in SQL to list the employees who joined in any year except the month February. */
select * from empl where hiredate not like '%02%';

/*Write a query in SQL to list the employees whose annual salary is within the range 24000 and 50000.*/
select emp_name, salary*12 asal from empl where (salary*12)  between 24000 and 50000;

/*Write a query in SQL to list the employees who have joined on the following dates 1st May,20th Feb, and 03rd Dec in the year 1991.*/
select * from empl where hiredate in ('1991 -02-01', '1991-02-20', '1991-12-03');

/*Write a query in SQL to list all the employees who joined before or after 1991.*/
select * from empl where hiredate not like '1991%';

/*Write a query in SQL to list the employees along with department name. */
select e.emp_id, e.emp_name, d.dept_name from empl e, department d where e.dept_id = d.dept_id;

/*Write a query in SQL to list the name, job name, annual salary, department id, department name and grade of the employees who earn 60000 in a year or not working as an ANALYST. */
select e.emp_name, e.job_name, (12*e.salary) "asal", e.dept_id, d.dept_name, s.grade from empl e, department d, salary s 
where e.dept_id=d.dept_id
and  e.salary BETWEEN s.min_sal AND s.max_sal 
and (((12*e.salary)>60000) or (e.job_name not like 'ANALYST'));

/*Write a query in SQL to list the name, job name, manager id, salary, manager name, manager's salary for those employees whose salary is greater than the salary of their managers. */
select e.emp_name, e.job_name, e.manager_id, w.emp_name, w.emp_id, w.salary from empl e, empl w
where e.manager_id =w.emp_id
and e.salary > w.salary;

/*Write a query in SQL to list the employees name, department, salary and commission. For those whose salary is between 2000 and 5000 while location is PERTH*/
select e.emp_name, e.dept_id, e.salary, e.commission, d.dep_location from empl e, department d
where e.dept_id=d.dept_id 
and e.salary between 2000 and 5000
and d.dep_location = 'PERTH';

/*Write a query in SQL to list the grade, employee name for the department id 1001 or 3001 but salary grade is not 4 while they joined the company before 1992-12-31.*/
select s.grade, e.emp_name from empl e, salary s
where e.salary BETWEEN s.min_sal AND s.max_sal
and e.dept_id in (1001, 3001) 
and e.hiredate < ('1992-12-31')
AND s.grade NOT IN (4);

/*Write a query in SQL to list the employees whose manager name is JONAS.*/
select e.emp_name, e.emp_id, w.emp_name from empl e, empl w
where e.manager_id=w.emp_id
and w.emp_name = 'JONAS';

/*Write a query in SQL to list the name and salary of FRANK if his salary is equal to max_sal of his grade.*/
select e.emp_name, e.salary from empl e, salary s
where e.salary between s.min_sal and s.max_sal
and e.emp_name = 'FRANK'
and e.salary = s.max_sal;

/*Write a query in SQL to list the employees who are working either MANAGER or ANALYST with a salary range between 2000 to 5000 without any commission.*/
select * from empl
where job_name in ('MANAGER', 'ANALYST')
and salary between 2000 and 5000
and commission is null;

/*Write a query in SQL to list the employees along with their location who belongs to SYDNEY, MELBOURNE with a salary range between 2000 and 5000 and joined in 1991. */
select e.emp_name, d.dep_location from empl e, department d
where e.dept_id=d.dept_id
and d.dep_location in ('SYDNEY', 'MELBOURNE')
and e.salary between 2000 and 5000
and e.hiredate like '1991%';

/*Write a query in SQL to list the employees who are senior to their own manager*/
SELECT * FROM empl w, empl m
WHERE w.manager_id = m.emp_id AND w.hiredate < m.hiredate;

/*Write a query in SQL to list the employee with their grade for the grade 4.*/
select * from empl e, salary s 
where e.salary between s.min_sal and s.max_sal
and s.grade = (4);

/*Write a query in SQL to list the employees in the ascending order of their salaries*/
select * from empl order by salary;

/*Write a query in SQL to list the details of the employees in ascending order to the department_id and descending order to the jobs*/
select * from empl order by dept_id, job_name desc;

/*Write a query in SQL to display all the unique job in descending order.*/
select distinct(job_name) from empl order by job_name desc;

/*Write a query in SQL to list the id, name, monthly salary, daily salary of all the employees in the ascending order of their annual salary. */
select emp_id, emp_name, salary/30 dsal, salary as msal, (salary*12) asal
from empl
order by (salary*12);

/*Write a query in SQL to list the employees in descending order who are either 'CLERK' or 'ANALYST'.*/
select * from empl where job_name in ('CLERK', 'ANALYST') order by job_name desc;

/*Write a query in SQL to display the location of CLARE.*/
select e.emp_name, d.dep_location from empl e, department d where e.dept_id=d.dept_id and e.emp_name= 'CLARE';

/*Write a query in SQL to list the employees in ascending order of seniority who joined on 1-MAY-91,or 3-DEC-91, or 19-JAN-90*/
select * from empl where hiredate in ('1991-05-01', '1991-12-03', '1990-01-19')
order by hiredate;

/*Write a query in SQL to list the employees who are drawing the salary less than 1000 and sort the output in ascending order on salary.*/
select * from empl where salary < 1000 order by salary;

/*Write a query in SQL to list the employee id, name, hire_date, current date and experience of the employees in ascending order on their experiences.*/
select emp_id, emp_name, hiredate, sysdate(), datediff(sysdate(), hiredate)/365 experience
from empl order by experience;

/*Write a query in SQL to list the employees in ascending order of designations of those, joined after the second half of 1991.*/
select *from empl where hiredate > '1991-06-30' order by job_name;

/*Write a query in SQL to find the average salary and average total remuneration(salary and commission) for each type of job.*/
select job_name, avg(salary), avg(salary + commission) from empl group by job_name;

/*Write a query in SQL to list the manager no and the number of employees working for those managers in ascending order on manager id. */
select e.emp_id, e.manager_id, count(*) from empl e, empl w
where e.manager_id=w.emp_id
group by manager_id
order by e.manager_id;

/*Write a query in SQL to list the department where at least two employees are working.*/
select dept_id, count(*) from empl group by dept_id having count(*) >=2;

/*Write a query in SQL to display the Grade, Number of employees, and maximum salary of each grade. */
select s.grade, count(*), max(salary) from empl e, salary s
where e.salary between s.min_sal and s.max_sal
group by s.grade;

/*Write a query in SQL to display the department name, grade, no. of employees where at least two employees are working as a SALESMAN.*/
SELECT d.dept_name,
       s.grade,
       count(*)
FROM empl e,
     department d,
     salary s
WHERE e.dept_id = d.dept_id
  AND e.job_name = 'SALESMAN'
  AND e.salary BETWEEN s.min_sal AND s.max_sal
GROUP BY d.dept_name,
         s.grade
HAVING count(*) >= 2;

/*Write a query in SQL to list the no. of employees in each department where the no. is less than 4*/
select dept_id,count(*) from empl group by dept_id having count(*) <= 4;

/*Write a query in SQL to list the name of departments where atleast 2 employees are working in that department. */
select d.dept_name, count(*) from empl e, department d 
where e.dept_id=d.dept_id group by d.dept_name having count(*)>=2;

/*Write a query in SQL to check whether all the employees numbers are indeed unique*/
select emp_id, count(*) from empl group by emp_id;

/*Write a query in SQL to list the no. of employees and average salary within each department for each job name.*/
select count(*), avg(salary), dept_id, job_name from empl group by dept_id, job_name;


