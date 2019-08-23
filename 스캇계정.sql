select * from tab; 
select * from salgrade;

select * from emp; 
select * from dept; 


--1
desc emp;

--2
desc dept;

--3
desc salgrade;

--4
select empno, ename, job from emp;

--5
select deptno, dname from dept;

--6
select dname, loc from dept;

--7
select sal, comm from emp;

--8
select distinct hiredate from emp;

--9
select distinct mgr from emp;

--10
select distinct deptno from dept;

--11
select ename, sal*6
from emp;

--12
select ename, comm*6
from emp;

--13
select ename as "Name", sal as "Salary"
from emp;

--14
select empno as "사원번호", ename as "사원이름", hiredate as "입사일",  deptno as "부서번호"
from emp;

--15
select deptno as "부서번호", dname as "부서이름", loc as "지역"
from dept;

--16
select job||ename
from emp;

--17
select hiredate||'에 입사한' ||ename|| '입니다'
from emp;

--18
select deptno, ename
from emp
where deptno=10;

--19
select empno, ename
from emp
where sal >=2000;

--20
select empno, ename
from emp
where job='CLERK';

--21
select ename
from emp
where HIREDATE='80/12/17';

--22
select dname, LOC
from dept
where DEPTNO != 30;

--23
select hisal, losal
from SALGRADE
where GRADE=5;

--24
select *
from emp
where ENAME='WARD';

--25
select ename, job, deptno
from emp
where deptno='10' and job='MANAGER';

--26
select empno, ename
from emp
where sal>=2000 and deptno='30';

--27  ?????????????????????????
--select empno, ename, job, hiredate
--from emp
--where job like 'CLERK' and HIREDATE>=81/__/__%;
select empno, ename
from emp
where job = 'CLERK' and hiredate > '1981-01-01';

--28
select ename
from emp
where DEPTNO!=20 and JOB='MANAGER';

--29
select dname
from dept
where loc!='BOSTON';

--30
select ename
from emp
where job='SALESMAN' and sal>=1500;

select ename
from emp
where job ='SALESMAN' and sal >= 1500;

--31
select empno, ename, sal
from emp
where sal>=1000 and sal<=2500;

--32
select empno, ename, deptno
from emp
where empno like '75%';

select empno, ename, deptno
from emp
where empno like '75__';

--33
select ename, sal
from emp
where deptno like '10' or deptno like '30';

--34
select ename
from emp
where MGR like '76%';

--35
select ename, sal, comm
from emp
where empno like '79%';

--36
select ename, empno, deptno
from emp
where hiredate like '81/02/__';

--37
select empno, ename
from emp
where ename like '%A%';

select empno, ename
from emp
where ename like '_%A%';


--38
select empno, ename
from emp
where mgr is null;

--39
select empno, ename, mgr
from emp
where mgr is not null;

--40
select ename
from emp
where empno like '7902' or empno like '7781';

--41
select empno, ename
from emp
where mgr like '7698' or mgr like '7839';

--42
select empno, ename, deptno
from emp
where job like 'MANAGER' or job like 'SALESMAN';

--43
select empno, ename
from emp
order by empno;

--44
select empno, ename
from emp
order by deptno, ename;

--45
select *
from emp
order by sal desc;

--46
select *
from emp
order by job, sal desc;

--47
select *
from emp
order by deptno, job, sal desc;

--48
select lower(ename)
from emp;

--49
select lower(ename), lower(job)
from emp;

--50
select upper(ename)
from emp;

--51
select upper(ename), upper(job)
from emp;

--52
select initcap(ename)
from emp;

--53
select initcap(ename), initcap(job)
from emp;

--54
select concat(ename, job)
from emp;

--55
select ename, substr(ename,1,2)
from emp;

--56
select ename, job, substr(job,2,3)
from emp;

--57
select ename, length(ename)
from emp;

--58
select job, length(job)
from emp;

--59
select instr(ename,'A')
from emp;

--60
select instr(job,'A')
from emp;

--61
select rpad(ename,15,'&')
from emp;

--61
select lpad(job,20,'%')
from emp;

--63
select empno, ename, round(sal,-2)
from emp;

--64
select empno, ename, trunc(sal,-2)
from emp;

--65
select empno, mod(sal,100)
from emp;

--66
select empno, ename, hiredate, hiredate+100
from emp;

--67
select empno, ename, hiredate, round(sysdate-hiredate) as "WORKDATE"
from emp;

--68
select add_months(hiredate,3)
from emp;

--69
select next_day(hiredate,'토')
from emp;

--70
select last_day(hiredate)
from emp;

--71
select round(hiredate, 'year')
from emp;

--72
select trunc(hiredate, 'year')
from emp;

--73
select empno, ename, nvl(to_char(mgr),'상급자 없음')
from emp;

--74
select ename, empno, sal+nvl(comm,0)
from emp;

--75
select empno, ename, (sal+nvl(comm,0))*12
from emp;

--76
select empno, ename, nvl(to_char(mgr),'ceo')
from emp;

--77 
select nvl(nullif(job,'CLERK'),'C')
from emp;

select nvl(nullif(job,'CLERK'),'C')
from emp;


--78
select empno, ename, sal,
case job
when 'SALEMAN' then sal*1.1
when 'CLERK' then sal *1.15
when 'MANAGER' then sal *1.2
end as "급여인상"
from emp
order by empno;

--79
select empno, ename, job, sal,
decode(job,'SALESMAN', sal*1.1, 'MANAGER', sal*1.2, 'CLERK', sal *1.2)
as "인상된 급여"
from emp
order by empno;

--84
select max(ename), min(ename)
from emp;

--85
select max(hiredate), min(hiredate)
from emp;

--86
select max(empno), min(empno)
from emp;

--87
select count(mgr)
from emp;

--88
select count(ename)
from emp;

--89 ????????????????
--select count(emp)
--from emp;

select count(*)
from emp;


--90 ????????????????
--select count(*)
--from emp;

select count(*)
from dept;

--91
select count(comm)
from emp;

--92
select deptno, count(deptno)
from emp
group by deptno;

--93
select mgr, count(mgr)
from emp
group by mgr;

--94
select deptno, round(avg(sal),5)
from emp
group by deptno;

--95
select deptno, round(stddev(sal),5)
from emp
group by deptno;

--96  ?????????????????????
-- select deptno, job, sum(sal)
-- from emp
-- group by deptno;

select deptno,sum(sal)
from emp
group by deptno;


--97 ?????????????
--select deptno, job, avg(sal)
--from emp
--group by job;

select deptno,job,avg(sal)
from emp
group by deptno,job;


--98 ????????
--select deptno, job, max(hiredate), min(hiredate)
--from emp
--group by job;

select deptno,job,max(hiredate),min(hiredate)
from emp
group by deptno,job;

--99 ??????
--select deptno, count(*)
--from emp
--order by count(depno);

select deptno,count(*)
from emp
group by deptno
order by 2;

--100
select deptno, avg(sal)
from emp
group by deptno;

--101 ??????????
--select deptno, job, sum(sal)
--from emp
--group by sum(sal);

select deptno,job,sum(sal)
from emp
group by deptno,job
order by 3 desc;

--102
select deptno, job, avg(sal)
from emp
group by avg(sal);



















