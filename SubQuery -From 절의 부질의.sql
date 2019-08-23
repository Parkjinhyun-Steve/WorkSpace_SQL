-- �л����� �а��� ��� ���庸�� ū ������ �л��� ���� �˻�
select stu_dept, round(avg(stu_height),2) as avg_height
from student
group by stu_dept;

-->�� ����� ���̺� ó�� �����Ͽ� from ���� ����Ϸ���
select stu_no, stu_name, a.stu_dept, stu_height, avg_height
from student a, (select stu_dept, round(avg(stu_height),2) as avg_height 
                      from student       group by stu_dept) b
where a.stu_dept = b.stu_dept and stu_height > avg_height;

