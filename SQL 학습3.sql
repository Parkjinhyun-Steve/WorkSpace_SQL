select * from student;

insert into student
values(19970406,'����','��ǻ������','1','A','M',127,63);

insert into student(stu_no, stu_name)
values(20160101,'�ٴϿ�');

select * from enrol where stu_no < 20150000;

create table a_enrol
as select * from enrol where stu_no < 20150000;

update student
set stu_name='���ٴϿ�'
where stu_no=20160101;

delete from student
where stu_no=20160101 or stu_no=19970406;

delete from student where stu_grade !=10;
rollback;