
-- ���� �л��� �� �г⺰ ��� ������ 160 �̻��� �г�� ��� ����
select *
from student
where stu_dept='���'
group by stu_grade having avg(stu_height) >= 160;

select * from student;

select stu_grade, avg(stu_height)
from student
where stu_dept = '���'
group by stu_grade having avg(stu_height) >= 160;


-- �ִ� ������ 175 �̻��� �а��� �а��� �ִ� ����
select stu_dept, max(stu_height)
form student
group by stu_dept having max(stu_height) >= 175;


-- �а��� ��� ���� �� ���� ���� ��� ����
select max(avg(stu_height))
from student
group by stu_dept;

select * from tab;






