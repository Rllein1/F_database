# F_database


## Sample Company Database
* asfasfasfasfasfasfa
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
* FD1 Dnum  -> (Dname, mgrssn, mgrstart, Dloc.) Partial Dependency
* FD2 ssn   ->   (Empname, ssn, bdate, add, sex, salary, Sssn, DEPname) Partial Dependency
* FD3 DEPname   ->   (Dsex, bdate, relation) Partial Dependency
* FD4 Pnum  ->  (Pname, Ploc.) Partial Dependency
* FD5 Dnum, mgrssn  ->  (SssN) Fully Dependency
* FD6 ssn, Pnum  ->  (hours) Fully Dependency
* FD7 hours  ->  (salary) Transitive Dependency

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

3. Get fullname of employee using CONCAT
```
SELECT CONCAT(lname,' ',minit,' ',fname) from employee
```
* safasfasfa

4. to select all manager 
```
SELECT CONCAT(em.lname,' ',em.minit,' ',em.fname) as manager,dept.dname
FROM employee as em
INNER JOIN department as dept on dept.mgrssn = em.ssn
```
* safasfasfa
5. Select 3 highest salary
```
select salary from employee as a 
where 3 >= (select count(salary) from employee as b where a.salary <= b.salary) 
order by a.salary desc;
```
* safasfasfa
6. Select 3 lowest salary
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
