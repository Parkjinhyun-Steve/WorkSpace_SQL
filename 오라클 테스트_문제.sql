select * from student;  
select * from enrol;
select * from subject;

-- �а��� ������ ��������� ���Ͻÿ�.

select stu_dept, sub_no, avg(enrol.enr_grade)
from student join enrol on student.stu_no=enrol.stu_no
group by stu_dept, sub_no;

select stu_dept, sub_dept, avg(enrol.enr_grade)

from student join enrol on student.stu_no=enrol.stu_no
group by stu_dept, sub_no;

--Ű�� 170�̻� ������ 70 ������ �л�

select stu_no, stu_name, stu_height, stu_weight
from student
where stu_height >=170 and stu_weight <= 70;


--���� ������ (����-100)*0.9 ���� ���� �����԰� ������ �л� ���
--������ �ʿ��� ������� ����

select stu_no, stu_name, stu_height, stu_weight, ROUND((stu_weight / ((stu_height-100)*0.9)),2)
from student
where stu_weight >= (stu_height-100)*0.9 
order by stu_weight / ((stu_height-100)*0.9) desc;


