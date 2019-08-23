select * 
from student     
where stu_class  in ( select stu_class from student where stu_dept='컴퓨터정보') and stu_dept <> '컴퓨터정보';

--ex4> 신장이 전체 학생들의 편균 신장보다 큰 학생을 검색
select *
from student
where stu_height > (select avg(stu_height) from student);

--ex5> 신장이 모든 학과들의 평균 신장보다 큰 학생의 정보
select *
from student
where stu_height > all (select avg(stu_height) from student group by stu_dept);

select avg(stu_height)
from student group by stu_dept;

--ex6> max값을 이용한 풀이
select *
from student
where stu_height > (select max(avg(stu_height)) from student group by stu_dept);

select max(avg(stu_height))
from student
group by stu_dept;

--ex7> 컴퓨터정보과 최소 신장과 비교하여 최소 신장이 더 큰 학과의 학과명과 최소신장을 구하기
select stu_dept, min(stu_height)
 from student 
group by stu_dept having min(stu_height)> (select min(stu_height) from student where stu_dept = '컴퓨터정보';);

select min(stu_height)
from student
where stu_dept = '컴퓨터정보';








