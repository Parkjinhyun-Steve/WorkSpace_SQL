select student.*, enrol.*
from student cross join enrol
where student.stu_no=enrol.stu_no and sub_no=101;

select enrol.sub_no
from student join enrol on student.stu_no=enrol.stu_no
where stu_name='���¿�';

-- �����ȣ 101 �Ǵ� 102���� ������ �л��� �й��� �̸�
select stu_no, stu_name
from student natural join enrol
where sub_no=101 or sub_no=102;



