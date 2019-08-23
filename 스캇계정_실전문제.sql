-- 1.사원(emp) 테이블과 부서(dept) 테이블을 natual join 하라.
select *
from emp natural join dept;

--2. 사원번호, 사원이름, 부서이름을 검색하라(equi join)  -> emp테이블의 DEPTNO 속성  dept테이블 DEPTNO 속성  -> 같은 속성을 이용
select empno, ename, dname
from emp, dept
where emp.DEPTNO=dept.DEPTNO;

--3. 사원번호, 사원이름, 부서이름을 검색하라.(natural join)  -> 같은 열을 이용
select empno, ename, dname
from emp
natural join dept;

--4. 사원번호, 사원이름, 부서이름을 검색하라.(join ~ using)
select empno, ename, dname
from emp
join dept using(deptno);

--5. 사원번호, 사원이름, 부서이름을 검색하라(join ~ on)
select empno, ename, dname
from emp
join dept on emp.deptno = dept.deptno;

--6. 지역이 NEW YORK인 사원이름을 검색하라(equi join)  -> 같은 속성
select ename, loc
from emp, dept
where emp.DEPTNO=dept.DEPTNO and loc='NEW YORK';

--7. 지역이 NEW YORK인 사원이름을 검색하라(natural join) -> 같은 열 이용
select ename, loc
from emp
natural join dept
where loc='NEW YORK';

--8. 지역이 NEW YORK인 사원이름을 검색하라(join ~ using)
select ename, loc
from emp
join dept using(deptno)
where loc='NEW YORK';

--9. 지역이 NEW YORK인 사원이름을 검색하라(join ~ on)
select ename, loc
from emp
join dept on emp.deptno = dept.deptno
where loc='NEW YORK';

--10. 지역이 NEW YORK인 사원의 사원번호, 사원이름을 사원번호 순으로 검색하라.
select empno, ename, loc
from emp
join dept on emp.deptno = dept.deptno
where loc='NEW YORK'
order by empno;

--11. ALLEN 사원이 근무 중인 부서이름과 지역을 검색하라(equi join)
select ename, dname, loc
from emp, dept
where emp.DEPTNO=dept.DEPTNO
and ename = 'ALLEN';

--12. ALLEN 사원이 근무 중인 부서이름과 지역을 검색하라(join ~ using)
select ename, dname, loc
from emp
join dept using(deptno)
where ename = 'ALLEN';

--13. ALLEN 사원이 근무 중인 부서이름과 지역을 검색하라(join ~ on)
select ename, dname, loc
from emp
join dept on emp.deptno = dept.deptno
where ename = 'ALLEN';

--14. ALLEN 사원이 근무 중인 부서이름과 지역을 검색하라(natural join)
select ename, dname, loc
from emp
natural join dept
where ename = 'ALLEN';

--15. 급여가 2000 이상인 사원들의 사원명과 지역을 검색하라.
select ename, loc, sal
from emp, dept
where  emp.deptno = dept.deptno
and sal >=2000;

--16. 급여가 1000 이상 2000 이하인 사원들의 사원번호, 사원이름, 부서이름을 사원번호순으로 검색하라.
select empno, ename, dname, sal
from emp, dept
where emp.deptno = dept.deptno
and sal >=1000
and sal <=2000
order by empno;

--17. 사원직무가 SALESMAN이면서 CHICAGO 지역에 근무중인 사원명을 검색하라.
select ename, job, loc
from emp, dept
where emp.deptno = dept.deptno
and job='SALESMAN'
and loc='CHICAGO';

--18. NEW YORK 이나 DALLAS 지역에 근무하는 사원들의 사원번호와 사원이름을 사원번호 순으로 검색하라(equi join).
select empno, ename, loc
from emp, dept
where emp.deptno = dept.deptno
and loc in ('NEW YORK', 'DALLAS')
order by empno;

--19. 부서이름이 ACCOUNTING이거나, 지역이 CHICAGO이니 사원의 사원번호와 사원이름을 검색하라.
select empno, ename, dname, loc
from emp, dept
where emp.deptno = dept.deptno
AND (dname = 'ACCOUNTING'
or loc= 'CHICAGO');

--20.  NEW YORK이나 DALLAS 지역에 근무하는 사원들의 사원번호와 사원이름을 사원번호 순으로 검색하라(natural join)
select empno, ename, loc
from emp natural join dept
where loc in ('NEW YORK', 'DALLAS')
order by empno;

--21. 부서이름이 ACCOUNTING이거나, 지역이 CHICAGO인 사원의 사원번호와 사원이름을 검색하라(join~using).
select empno, ename, dname, loc
from emp join dept using(deptno)
where dname = 'ACCOUNTING'
or loc = 'CHICAGO';

--22. 사원번호, 사원이름, 급여, 급여등급을 급여등급별 사원번호 순으로 검색하라.
select empno, ename, sal, grade
from emp, salgrade
where sal between losal and hisal 
order by 4,1;

select * from bonus;
select * from dept;
select * from emp;
select * from emp_test;
select * from salgrade;

--23. 사원번호, 사원이름, 상급자사원번호, 상급자이름을 검색하라(equi join)  ???????????????????
select a.empno, a.ename, b.empno, b.ename
from emp a, emp b
where a.mgr=b.empno;

--24 사원번호, 사원이름, 상급자사원번호, 상급자이름을 검색하라(join ~~ on)
select a.empno, a.ename, b.empno, b.ename
from emp a join emp b on a.mgr=b.empno;

--25. BLAKE 사원보다 많은 급여를 받는 사원이름을 검색하라(부질의)













--37. 20번 부서의 최대 급여보다
--     최대 급여가 큰 부서의 번호와 최대 급여를 검색하라.

select *
from emp;

select max(sal)
from emp
where deptno=20;

select deptno, sal
from emp where sal>3000;

select deptno, max(sal)
from emp
group by deptno having max(sal) > (select max(sal)
                                                     from emp
                                                     where deptno=20);
                                                     

                                                     
                                                     
                                                     