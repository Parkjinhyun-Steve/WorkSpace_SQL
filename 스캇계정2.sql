--1
select *
from emp natural join dept;

--2 
select emp.empno, ename, dept.dname
from emp, dept
where emp.deptno = dept.deptno;

--3
select empno, ename, dept.dname
from emp natural join dept;

--4