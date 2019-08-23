--1
select *
from emp natural join dept;

--2
select emp.empno, ename, dept.dname
from emp, dept
where emp.deptno = dept.deptno;

--3
select empno, ename, dname
from emp natural join dept;

select empno, ename, dept.dname
from emp natural join dept;

select empno, ename, dname
from emp, dept;

--4
select empno, ename, dname
from emp join dept using(deptno);

select empno, ename, dept.dname
from emp join dept using(deptno);

-- 5.�����ȣ, ����̸�, �μ��̸��� �˻��϶�(join ~ on).
select empno, ename, dept.dname
from emp join dept on emp.deptno = dept.deptno;

-- 6.������ NEW YORK�� ����̸��� �˻��϶�(equi join).
select  ename, loc
from emp, dept
where emp.deptno=dept.deptno and loc='NEW YORK';

select ename, loc
from emp, dept
where emp.deptno=dept.deptno and loc='NEW YORK';


