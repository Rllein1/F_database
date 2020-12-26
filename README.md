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

3.
```
sdasd
sadasd
asd
```
* safasfasfa
