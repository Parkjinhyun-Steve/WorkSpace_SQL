-- 학생들의 학과별 평균 신장보다 큰 신장의 학생들 정보 검색
select stu_dept, round(avg(stu_height),2) as avg_height
from student
group by stu_dept;

-->이 결과를 테이블 처럼 생각하여 from 절에 사용하려면
select stu_no, stu_name, a.stu_dept, stu_height, avg_height
from student a, (select stu_dept, round(avg(stu_height),2) as avg_height 
                      from student       group by stu_dept) b
where a.stu_dept = b.stu_dept and stu_height > avg_height;

