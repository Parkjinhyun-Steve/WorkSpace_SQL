select * 
from student     
where stu_class  in ( select stu_class from student where stu_dept='��ǻ������') and stu_dept <> '��ǻ������';

--ex4> ������ ��ü �л����� ��� ���庸�� ū �л��� �˻�
select *
from student
where stu_height > (select avg(stu_height) from student);

--ex5> ������ ��� �а����� ��� ���庸�� ū �л��� ����
select *
from student
where stu_height > all (select avg(stu_height) from student group by stu_dept);

select avg(stu_height)
from student group by stu_dept;

--ex6> max���� �̿��� Ǯ��
select *
from student
where stu_height > (select max(avg(stu_height)) from student group by stu_dept);

select max(avg(stu_height))
from student
group by stu_dept;

--ex7> ��ǻ�������� �ּ� ����� ���Ͽ� �ּ� ������ �� ū �а��� �а���� �ּҽ����� ���ϱ�
select stu_dept, min(stu_height)
 from student 
group by stu_dept having min(stu_height)> (select min(stu_height) from student where stu_dept = '��ǻ������';);

select min(stu_height)
from student
where stu_dept = '��ǻ������';








