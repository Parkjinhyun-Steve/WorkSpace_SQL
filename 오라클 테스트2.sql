select student.*, enrol.*
from student cross join enrol
where student.stu_no=enrol.stu_no and sub_no=101;

select enrol.sub_no
from student join enrol on student.stu_no=enrol.stu_no
where stu_name='이태연';

-- 과목번호 101 또는 102번을 수강한 학생의 학번과 이름
select stu_no, stu_name
from student natural join enrol
where sub_no=101 or sub_no=102;



