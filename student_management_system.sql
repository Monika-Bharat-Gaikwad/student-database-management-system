CREATE DATABASE student_management_system1;
USE student_management_system1;

CREATE TABLE students1 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    course VARCHAR(50),
    admission_date DATE
);

INSERT INTO students1
VALUES
(101,'Monika','monikagaikwad1405@gmail.com','Sambhajinagar','Btech','2021-09-20'),
(102,'Rahul','rahulsharma@gmail.com','Pune','Btech','2021-09-21'),
(103,'Priya','priyapatil@gmail.com','Mumbai','BCA','2021-09-22'),
(104,'Amit','amitjadhav@gmail.com','Nashik','Btech','2021-09-23'),
(105,'Sneha','snehadeshmukh@gmail.com','Nagpur','BCA','2021-09-24'),
(106,'Rohit','rohitmore@gmail.com','Pune','Btech','2021-09-25'),
(107,'Pooja','poojashinde@gmail.com','Mumbai','BSc','2021-09-26'),
(108,'Akash','akashkale@gmail.com','Sambhajinagar','Btech','2021-09-27'),
(109,'Neha','nehakulkarni@gmail.com','Nashik','BCA','2021-09-28'),
(110,'Sahil','sahilpawargar@gmail.com','Nagpur','Btech','2021-09-29'),
(111,'Kiran','kiranmore@gmail.com','Pune','BSc','2021-09-30'),
(112,'Anjali','anjaligaikwad@gmail.com','Mumbai','Btech','2021-10-01'),
(113,'Vikas','vikaspatil@gmail.com','Sambhajinagar','BCA','2021-10-02'),
(114,'Riya','riyadeshmukh@gmail.com','Nashik','Btech','2021-10-03'),
(115,'Manish','manishjadhav@gmail.com','Nagpur','BSc','2021-10-04');



CREATE TABLE courses1(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    fees float
);

insert into courses1
values
(course_id,course_name,fees),
(1,'Btech',50000.50),
(2,'BCA',60000.90),
(3,'BSc',40000.50);

CREATE TABLE marks1 (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subjects varchar(50),
    marks int
);
ALTER TABLE marks1
ADD CONSTRAINT fk_marks_student
FOREIGN KEY (student_id)
REFERENCES students1(student_id);


insert into marks1
values
(mark_id,student_id,subjects,marks),
(01,101,'java',96),
(02,101,'python',95),
(03,101,'SQL',88),

(04,102,'java',55),
(05,102,'python',67),
(06,102,'SQL',88),

(07,103,'java',58),
(08,103,'python',99),
(09,103,'SQL',88),

(10,104,'java',58),
(11,104,'python',99),
(12,104,'SQL',88),

(13,105,'java',56),
(14,105,'python',92),
(15,105,'SQL',88),

(16,106,'java',53),
(17,106,'python',96),
(18,106,'SQL',88),

(19,107,'java',54),
(20,107,'python',98),
(21,107,'SQL',88),

(22,108,'java',58),
(23,108,'python',96),
(24,108,'SQL',88);


select * from students1;
select * from courses1;
select* from marks1;



select * from students1
WHERE city = 'Pune';




select max(marks) as highest_marks
from marks1;





select subjects, avg(marks) as average_marks
from marks1
group by subjects;



select student_id,subjects, avg(marks)
from marks1
group by subjects
having avg(marks);


select student_id,avg(marks) as avg_marks
from marks1
group by student_id;



select student_id,avg(marks) as avg_marks
from marks1
group by student_id
order by avg_marks desc
limit 3;




create view student_performance2 as 
select
    student_id,
    avg(marks) as avg_marks,
    max(marks) as max_marks,
    min(marks) as min_marks
from marks1
group by student_id;

select * from student_performance2;


create index idx_students
on students1(student_name);

select * from students
where student_name='Rohit';



DELIMITER //
create procedure student_mark(in s_id int)
begin
    select * from marks1
    where student_id=s_id;
end//

DELIMITER ;

call student_mark (108);


