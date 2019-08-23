
-- 기계과 학생들 중 학년별 평균 신장이 160 이상인 학년과 평균 신장
select *
from student
where stu_dept='기계'
group by stu_grade having avg(stu_height) >= 160;

select * from student;

select stu_grade, avg(stu_height)
from student
where stu_dept = '기계'
group by stu_grade having avg(stu_height) >= 160;


-- 최대 신장이 175 이상인 학과의 학과별 최대 신장
select stu_dept, max(stu_height)
form student
group by stu_dept having max(stu_height) >= 175;


-- 학과별 평균 신장 중 가장 높은 평균 신장
select max(avg(stu_height))
from student
group by stu_dept;

select * from tab;






