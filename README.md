# F_database


## Sample Company Database
* This database is a Company Database it designed to handle the operations of company. It provides to view the company department and its location, to manage employees and departments project, also works on the project this database get from github . See the below to view the Entity Relationship diagram(ERD) and the Functional Dependency Diagram (FDD) of the database.  

   The databases uses primary, and foreign keys to ensure the constraints of the database are maintianted upon insertion. Each entitiy has an unique ID to ensure that the transformations are easier.
#### Table Name
    * Department
    * Department_location
    * Employee
    * Dependant
    * Project
    * Works_on
#### ERD
![Alt](https://github.com/Rllein1/F_database/blob/main/db.png)

## Database Dependency Diagram
* __This image below show the functional dependecy of database.__
![Alt](https://github.com/Rllein1/F_database/blob/main/FDD.png)
* __FD1__ Dnum  -> (Dname, mgrssn, mgrstart, Dloc.) Partial Dependency
* __FD2__ ssn   ->   (Empname, ssn, bdate, add, sex, salary, Sssn, DEPname) Partial Dependency
* __FD3__ DEPname   ->   (Dsex, bdate, relation) Partial Dependency
* __FD4__ Pnum  ->  (Pname, Ploc.) Partial Dependency
* __FD5__ Dnum, mgrssn  ->  (SssN) Fully Dependency
* __FD6__ ssn, Pnum  ->  (hours) Fully Dependency
* __FD7__ hours  ->  (salary) Transitive Dependency

## Sample Query
1.
```  
      SELECT a.ssn, a.fname,a.minit, a.lname, a.dno,b.dname as deptname, 
      COUNT(b.dname) OVER (PARTITION BY b.dname) AS member 
      FROM employee as a 
      INNER join department as b ON b.dnumber= a.dno 
      ORDER BY a.dno ASC
```
* safasfasfa

2.
```
sdasd
sadasd
asd
```
* safasfasfa

3. __Get fullname of employee using CONCAT.__
```
SELECT CONCAT(lname,' ',minit,' ',fname) from employee
```
* safasfasfa

4. __to select all manager.__ 
```
SELECT CONCAT(em.lname,' ',em.minit,' ',em.fname) as manager,dept.dname
FROM employee as em
INNER JOIN department as dept on dept.mgrssn = em.ssn
```
* safasfasfa
5. __Select 3 highest salary.__
```
select salary from employee as a 
where 3 >= (select count(salary) from employee as b where a.salary <= b.salary) 
order by a.salary desc;
```
* safasfasfa
6. __Select 3 lowest salary.__
```
select salary from employee as a 
where 3 >= (select count(salary) from employee as b where a.salary >= b.salary);
```
* safasfasfa
3.
```
sdasd
sadasd
asd
```
* safasfasfa
3.
```
sdasd
sadasd
asd
```
* safasfasfa
3.
```
sdasd
sadasd
asd
```
* safasfasfa
3.
```
sdasd
sadasd
asd
```
* safasfasfa
