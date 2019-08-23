select * from student;  
select * from enrol;
select * from subject;

-- 학과별 과목의 평균점수를 구하시오.

select stu_dept, sub_no, avg(enrol.enr_grade)
from student join enrol on student.stu_no=enrol.stu_no
group by stu_dept, sub_no;

select stu_dept, sub_dept, avg(enrol.enr_grade)

from student join enrol on student.stu_no=enrol.stu_no
group by stu_dept, sub_no;

--키가 170이상 몸무게 70 이하인 학생

select stu_no, stu_name, stu_height, stu_weight
from student
where stu_height >=170 and stu_weight <= 70;


--적정 몸무게 (신장-100)*0.9 보다 많은 몸무게가 나가는 학생 명단
--관리가 필요한 순서대로 정렬

select stu_no, stu_name, stu_height, stu_weight, ROUND((stu_weight / ((stu_height-100)*0.9)),2)
from student
where stu_weight >= (stu_height-100)*0.9 
order by stu_weight / ((stu_height-100)*0.9) desc;


