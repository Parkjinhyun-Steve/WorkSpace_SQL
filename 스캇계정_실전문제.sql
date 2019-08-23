-- 1.���(emp) ���̺�� �μ�(dept) ���̺��� natual join �϶�.
select *
from emp natural join dept;

--2. �����ȣ, ����̸�, �μ��̸��� �˻��϶�(equi join)  -> emp���̺��� DEPTNO �Ӽ�  dept���̺� DEPTNO �Ӽ�  -> ���� �Ӽ��� �̿�
select empno, ename, dname
from emp, dept
where emp.DEPTNO=dept.DEPTNO;

--3. �����ȣ, ����̸�, �μ��̸��� �˻��϶�.(natural join)  -> ���� ���� �̿�
select empno, ename, dname
from emp
natural join dept;

--4. �����ȣ, ����̸�, �μ��̸��� �˻��϶�.(join ~ using)
select empno, ename, dname
from emp
join dept using(deptno);

--5. �����ȣ, ����̸�, �μ��̸��� �˻��϶�(join ~ on)
select empno, ename, dname
from emp
join dept on emp.deptno = dept.deptno;

--6. ������ NEW YORK�� ����̸��� �˻��϶�(equi join)  -> ���� �Ӽ�
select ename, loc
from emp, dept
where emp.DEPTNO=dept.DEPTNO and loc='NEW YORK';

--7. ������ NEW YORK�� ����̸��� �˻��϶�(natural join) -> ���� �� �̿�
select ename, loc
from emp
natural join dept
where loc='NEW YORK';

--8. ������ NEW YORK�� ����̸��� �˻��϶�(join ~ using)
select ename, loc
from emp
join dept using(deptno)
where loc='NEW YORK';

--9. ������ NEW YORK�� ����̸��� �˻��϶�(join ~ on)
select ename, loc
from emp
join dept on emp.deptno = dept.deptno
where loc='NEW YORK';

--10. ������ NEW YORK�� ����� �����ȣ, ����̸��� �����ȣ ������ �˻��϶�.
select empno, ename, loc
from emp
join dept on emp.deptno = dept.deptno
where loc='NEW YORK'
order by empno;

--11. ALLEN ����� �ٹ� ���� �μ��̸��� ������ �˻��϶�(equi join)
select ename, dname, loc
from emp, dept
where emp.DEPTNO=dept.DEPTNO
and ename = 'ALLEN';

--12. ALLEN ����� �ٹ� ���� �μ��̸��� ������ �˻��϶�(join ~ using)
select ename, dname, loc
from emp
join dept using(deptno)
where ename = 'ALLEN';

--13. ALLEN ����� �ٹ� ���� �μ��̸��� ������ �˻��϶�(join ~ on)
select ename, dname, loc
from emp
join dept on emp.deptno = dept.deptno
where ename = 'ALLEN';

--14. ALLEN ����� �ٹ� ���� �μ��̸��� ������ �˻��϶�(natural join)
select ename, dname, loc
from emp
natural join dept
where ename = 'ALLEN';

--15. �޿��� 2000 �̻��� ������� ������ ������ �˻��϶�.
select ename, loc, sal
from emp, dept
where  emp.deptno = dept.deptno
and sal >=2000;

--16. �޿��� 1000 �̻� 2000 ������ ������� �����ȣ, ����̸�, �μ��̸��� �����ȣ������ �˻��϶�.
select empno, ename, dname, sal
from emp, dept
where emp.deptno = dept.deptno
and sal >=1000
and sal <=2000
order by empno;

--17. ��������� SALESMAN�̸鼭 CHICAGO ������ �ٹ����� ������� �˻��϶�.
select ename, job, loc
from emp, dept
where emp.deptno = dept.deptno
and job='SALESMAN'
and loc='CHICAGO';

--18. NEW YORK �̳� DALLAS ������ �ٹ��ϴ� ������� �����ȣ�� ����̸��� �����ȣ ������ �˻��϶�(equi join).
select empno, ename, loc
from emp, dept
where emp.deptno = dept.deptno
and loc in ('NEW YORK', 'DALLAS')
order by empno;

--19. �μ��̸��� ACCOUNTING�̰ų�, ������ CHICAGO�̴� ����� �����ȣ�� ����̸��� �˻��϶�.
select empno, ename, dname, loc
from emp, dept
where emp.deptno = dept.deptno
AND (dname = 'ACCOUNTING'
or loc= 'CHICAGO');

--20.  NEW YORK�̳� DALLAS ������ �ٹ��ϴ� ������� �����ȣ�� ����̸��� �����ȣ ������ �˻��϶�(natural join)
select empno, ename, loc
from emp natural join dept
where loc in ('NEW YORK', 'DALLAS')
order by empno;

--21. �μ��̸��� ACCOUNTING�̰ų�, ������ CHICAGO�� ����� �����ȣ�� ����̸��� �˻��϶�(join~using).
select empno, ename, dname, loc
from emp join dept using(deptno)
where dname = 'ACCOUNTING'
or loc = 'CHICAGO';

--22. �����ȣ, ����̸�, �޿�, �޿������ �޿���޺� �����ȣ ������ �˻��϶�.
select empno, ename, sal, grade
from emp, salgrade
where sal between losal and hisal 
order by 4,1;

select * from bonus;
select * from dept;
select * from emp;
select * from emp_test;
select * from salgrade;

--23. �����ȣ, ����̸�, ����ڻ����ȣ, ������̸��� �˻��϶�(equi join)  ???????????????????
select a.empno, a.ename, b.empno, b.ename
from emp a, emp b
where a.mgr=b.empno;

--24 �����ȣ, ����̸�, ����ڻ����ȣ, ������̸��� �˻��϶�(join ~~ on)
select a.empno, a.ename, b.empno, b.ename
from emp a join emp b on a.mgr=b.empno;

--25. BLAKE ������� ���� �޿��� �޴� ����̸��� �˻��϶�(������)













--37. 20�� �μ��� �ִ� �޿�����
--     �ִ� �޿��� ū �μ��� ��ȣ�� �ִ� �޿��� �˻��϶�.

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
                                                     

                                                     
                                                     
                                                     