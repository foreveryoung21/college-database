use college_office;

create table course (
	course_id  INT PRIMARY KEY AUTO_INCREMENT,
	department_id INT,
	course_title  VARCHAR(30),
	course_name  VARCHAR(22),
	course_duration  INT,
	course_level  INT,
	semester  INT,
	delivery_method VARCHAR(9)
);

insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (1, 1, 'PHD', 'computer science', 2, 10, 2, 'online');
insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (2, 2, 'Higher Certificate', 'mechanical engineering ', 2, 6, 2, 'blended');
insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (3, 3, 'PHD', 'business studies', 2, 9, 3, 'blended');
insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (4, 4, 'Bachelors of Science Honours', 'electrical engineering', 4, 8, 2, 'online');
insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (5, 10, 'Bachelors of Science Honours', 'biomedical engineering', 2, 9, 3, 'classroom');
insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (6, 6, 'Bachelors of Arts Honours', 'english literature', 3, 10, 2, 'classroom');
insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (7, 7, 'Bachelors of Arts Honours', 'accounting', 3, 9, 2, 'blended');
insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (8, 8, 'PHD', 'chemistry', 3, 9, 3, 'blended');
insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (9, 9, 'Bachelors of Science Honours', 'physics', 4, 8, 3, 'classroom');
insert into course (course_id , department_id, course_title , course_name , course_duration , course_level , semester , delivery_method) values (10, 5, 'Bachelors of Medicine Honours', 'learning disabilities', 2, 8, 3, 'blended');





create table collegee (
	college_id  INT PRIMARY KEY,
	college_name VARCHAR(3),
    lecturer_id INT,
	phone_number  VARCHAR(50),
	address  VARCHAR(50),
	monday_openingtime VARCHAR(50),
	monday_closingtime VARCHAR(50),
	tuesday_openingtime VARCHAR(50),
	tuesday_closingtime VARCHAR(50),
	wednesday_openingtime VARCHAR(50),
	wednesday_closingtime VARCHAR(50),
	thursday_openingtime VARCHAR(50),
	thursday_closingtime VARCHAR(50),
	friday_openingtime VARCHAR(50),
	friday_closingtime VARCHAR(50)
);
insert into collegee (college_id , college_name ,lecturer_id, phone_number , address , monday_openingtime, monday_closingtime, tuesday_openingtime, tuesday_closingtime, wednesday_openingtime, wednesday_closingtime, thursday_openingtime, thursday_closingtime, friday_openingtime, friday_closingtime) values (1, 'NCI',4, '679-670-0371', '5 Kennedy Point', '8:00 AM', '8:00 PM', '8:00 AM', '8:00 PM', '8:00 AM', '8:00 PM', '8:00 AM', '8:00 PM', '8:00 AM', '8:00 PM');























create table department  (
	department_id INT PRIMARY KEY  AUTO_INCREMENT,
	college_id INT,
	department_name VARCHAR(40)
);
insert into department  (department_id, college_id , department_name) values (1, 1, 'computer science ');
insert into department  (department_id, college_id , department_name) values (2, 1, 'mechanical engineering');
insert into department  (department_id, college_id , department_name) values (3, 1, 'business studies');
insert into department  (department_id, college_id , department_name) values (4, 1, 'electrical engineering ');
insert into department  (department_id, college_id , department_name) values (5, 1, 'learning disabilities');
insert into department  (department_id, college_id , department_name) values (6, 1, 'english literature');
insert into department  (department_id, college_id , department_name) values (7, 1, 'accounting');
insert into department  (department_id, college_id , department_name) values (8, 1, 'chemistry');
insert into department  (department_id, college_id , department_name) values (9, 1, 'physics');
insert into department  (department_id, college_id , department_name) values (10, 1, 'biomedical engineering');
insert into department  (department_id, college_id , department_name) values (11, 1, 'staff');







create table outstanding  (
	outstanding_id  INT PRIMARY KEY  AUTO_INCREMENT ,
	due_date  DATE,
	amount_due  INT
);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (1,  '2018-09-14', 1000);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (2,  '2018-09-14', 500);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (3,  '2018-09-14', 500);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (4,  '2018-09-14', 500);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (5,  '2018-09-14', 1000);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (6,  '2018-09-14', 1000);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (7,  '2018-09-14', 500);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (8,  '2018-09-14', 1000);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (9,  '2018-09-14', 1000);
insert into outstanding  (outstanding_id , due_date , amount_due ) values (10, '2018-09-14', 1000);





create table payment (
	payment_id  INT PRIMARY KEY  AUTO_INCREMENT,
	student_id  INT,
	fee_id  INT,
	outstanding_id  INT,
	payment_amount  INT,
	payment_date  DATE
);
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (1, 1, 1, 1, 1000, '2018-05-21');
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (2, 2, 2, 2, 500, '2018-07-22');
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (3, 3, 3, 3, 500, '2018-01-24');
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (4, 4, 4, 4, 500, '2018-02-12');
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (5, 5, 5, 5, 500, '2018-08-16');
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (6, 6, 6, 6, 500, '2018-03-10');
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (7, 7, 7, 7, 1000, '2018-06-26');
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (8, 8, 8, 8, 1000, '2018-01-14');
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (9, 9, 9, 9, 500, '2018-01-01');
insert into payment (payment_id , student_id , fee_id , outstanding_id , payment_amount , payment_date ) values (10, 10, 10, 10, 1000, '2018-01-22');








create table module  (
	module_id  INT PRIMARY KEY  AUTO_INCREMENT,
	lecturer_id  INT,
	course_id  INT,
	module_name VARCHAR(23),
	module_time  TIME,
	num_participants  INT
);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (1, 1, 1, 'mathematics', '10:00', 30);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (2, 2, 2, 'mechanical design', '09:00 ', 30);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (3, 3, 3, 'business tactics', '14:00 ', 20);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (4, 4, 4, 'electrical design', '10:00 ', 15);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (5, 5, 5, 'health studies', '09:00 ', 30);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (6, 6, 6, 'english literature', '09:00 ', 30);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (7, 7, 7, 'accounting principles', '16:00 ', 30);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (8, 8, 8, 'chemistry', '16:00 ', 15);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (9, 9, 9, 'physics and calculus', '09:00 ', 30);
insert into module  (module_id , lecturer_id , course_id , module_name, module_time , num_participants ) values (10, 10, 10, 'biomedical design ', '10:00 ', 20);






CREATE TABLE fee (
	fee_id  INT PRIMARY KEY  AUTO_INCREMENT,
	course_id INT,
	fee_amount INT
);
insert into fee (fee_id , course_id , fee_amount ) values (1, 1, 2500);
insert into fee (fee_id , course_id , fee_amount ) values (2, 2, 2000);
insert into fee (fee_id , course_id , fee_amount ) values (3, 3, 2000);
insert into fee (fee_id , course_id , fee_amount ) values (4, 4, 2000);
insert into fee (fee_id , course_id , fee_amount ) values (5, 5, 3000);
insert into fee (fee_id , course_id , fee_amount ) values (6, 6, 2500);
insert into fee (fee_id , course_id , fee_amount ) values (7, 7, 2000);
insert into fee (fee_id , course_id , fee_amount ) values (8, 8, 3000);
insert into fee (fee_id , course_id , fee_amount ) values (9, 9, 3000);
insert into fee (fee_id , course_id , fee_amount ) values (10, 10, 3000);






create table staff  (
	staff_id  INT PRIMARY KEY  AUTO_INCREMENT,
	department_id  INT,
	staff_firstname  VARCHAR(50),
	staff_secondname VARCHAR(50),
	staff_email  VARCHAR(50),
	staff_role  VARCHAR(14),
	years_experience  INT
);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (1, 11, 'Averil', 'Pollak', 'apollak0@uol.com.br', 'office worker', 4);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (2, 11, 'Kevina', 'Sekulla', 'ksekulla1@devhub.com', 'it support', 10);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (3, 11, 'Kissee', 'Poytheras', 'kpoytheras2@squidoo.com', 'librarian', 1);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (4, 11, 'Sigmund', 'Chainey', 'schainey3@twitpic.com', 'career advisor', 8);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (5, 11, 'Maible', 'Ravenscraft', 'mravenscraft4@hostgator.com', 'career advisor', 4);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (6, 11, 'Krishna', 'McGrah', 'kmcgrah5@amazonaws.com', 'librarian', 1);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (7, 11, 'Lainey', 'Kaines', 'lkaines6@homestead.com', 'office worker', 8);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (8, 11, 'Joe', 'Rigts', 'jrigts7@feedburner.com', 'career advisor', 10);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (9, 11, 'Cello', 'Shovelbottom', 'cshovelbottom8@japanpost.jp', 'counsellor', 1);
insert into staff  (staff_id , department_id , staff_firstname , staff_secondname, staff_email , staff_role , years_experience ) values (10, 11, 'Barnabas', 'Margrett', 'bmargrett9@purevolume.com', 'counsellor', 10);







create table holiday  (
	holiday_id  INT PRIMARY KEY  AUTO_INCREMENT,
	staff_id  INT,
	num_daysoff INT,
	start_date  DATE,
	end_date  DATE
);
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (1, 1, 15, '2018-07-10', '2018-07-15');
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (2, 1, 20, '2018-06-10', '2018-08-25');
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (3, 2, 10, '2018-08-10', '2018-06-15');
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (4, 2, 10, '2018-06-10', '2018-08-25');
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (5, 3, 15, '2018-06-10', '2018-06-15');
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (6, 3, 10, '2018-06-10', '2018-07-15');
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (7, 4, 5, '2018-08-20', '2018-06-15');
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (8, 4, 20, '2018-08-10', '2018-06-15');
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (9, 5, 5, '2018-08-10', '2018-07-15');
insert into holiday  (holiday_id , staff_id , num_daysoff, start_date , end_date ) values (10, 5, 15, '2018-08-20', '2018-08-15');














create table school (
	school_id  INT PRIMARY KEY  AUTO_INCREMENT,
	department_id  INT,
	name_school VARCHAR(50)
);
insert into school (school_id , department_id , name_school) values (1, 1, 'computer science and mathematics');
insert into school (school_id , department_id , name_school) values (2, 2, 'mechanical engineering and design');
insert into school (school_id , department_id , name_school) values (3, 3, 'business studies');
insert into school (school_id , department_id , name_school) values (4, 4, 'electrical engineering and electronics');
insert into school (school_id , department_id , name_school) values (5, 5, 'nursing and disabilities');
insert into school (school_id , department_id , name_school) values (6, 6, 'english literature');
insert into school (school_id , department_id , name_school) values (7, 7, 'accounting and finance');
insert into school (school_id , department_id , name_school) values (8, 8, 'chemistry');
insert into school (school_id , department_id , name_school) values (9, 9, 'physics and advanced mathematics ');
insert into school (school_id , department_id , name_school) values (10, 10, 'biomedical engineering');










create table lecturer (
	lecturer_id  INT PRIMARY KEY  AUTO_INCREMENT,
	school_id  INT,
	lecturer_firstname  VARCHAR(50),
	lecturer_secondname VARCHAR(50),
	lecturer_email  VARCHAR(50),
	specialization  VARCHAR(22),
	position  VARCHAR(18)
);

insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (1, 1, 'Anica', 'Mattedi', 'amattedi0@cyberchimps.com', 'mathematics', 'associate lecturer');
insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (2, 2, 'Maurise', 'Garfield', 'mgarfield1@artisteer.com', 'mechanical engineering', 'assistant lecturer');
insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (3, 3, 'Jamima', 'Baldock', 'jbaldock2@is.gd', 'business studies', 'assistant lecturer');
insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (4, 4, 'Michael', 'Dean', 'wboggs3@soundcloud.com', 'engineering', 'dean');
insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (5, 5, 'Celisse', 'Portam', 'cportam4@opera.com', 'nursing', 'assistant lecturer');
insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (6, 6, 'Jabez', 'Tullot', 'jtullot5@forbes.com', 'english', 'associate lecturer');
insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (7, 7, 'Myra', 'Henriet', 'mhenriet6@naver.com', 'accounting', 'associate lecturer');
insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (8, 8, 'Lynette', 'Yuill', 'lyuill7@deviantart.com', 'chemistry', 'associate lecturer');
insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (9,9, 'Trace', 'Waddam', 'twaddam8@jimdo.com', 'physics', 'assistant lecturer');
insert into lecturer (lecturer_id , school_id , lecturer_firstname , lecturer_secondname, lecturer_email , specialization , position ) values (10, 10, 'Arielle', 'Musselwhite', 'amusselwhite9@fema.gov', 'biomedical engineering', 'assistant lecturer');






create table result  (
	student_id  INT ,
	module_id INT,
    course_id INT,
	grade  INT
);
insert into result  (student_id , module_id, course_id , grade ) values (1, 1,1, 50);
insert into result  (student_id , module_id, course_id , grade ) values (2, 2,2, 80);
insert into result  (student_id , module_id, course_id , grade ) values (3, 3,3, 70);
insert into result  (student_id , module_id, course_id , grade ) values (4, 4,4, 90);
insert into result  (student_id , module_id, course_id , grade ) values (5, 5,5, 60);
insert into result  (student_id , module_id, course_id , grade ) values (6, 6,6, 70);
insert into result  (student_id , module_id, course_id , grade ) values (7, 7,7, 60);
insert into result  (student_id , module_id, course_id , grade ) values (8, 8,8, 60);
insert into result  (student_id , module_id, course_id , grade ) values (9, 9,9, 50);
insert into result  (student_id , module_id, course_id , grade ) values (10, 10,10, 90);
insert into result  ( module_id, course_id , grade ) values (11, 11,11, 50);







 create table student_course  (
	course_id INT,
	student_id INT,
	year  INT,
	completion_status VARCHAR(11)
);
insert into student_course  (course_id, student_id, year , completion_status) values (1, 1, 1, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (2, 2, 2, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (3, 3, 3, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (4, 4, 4, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (5, 5, 2, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (6, 6, 3, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (7, 7, 2, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (8, 8, 4, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (9, 9, 1, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (10, 10, 3, 'in progress');
insert into student_course  (course_id, student_id, year , completion_status) values (11, 11, 3, 'in progress');


/*

Task 1 

UPDATE student_course SET year = 2 WHERE year =1;
SELECT distinct student_firstname AS name ,student_secondname AS surname, course_title AS title ,course_name AS course, year from student
JOIN student_course
ON student.student_id = student_course.student_id
JOIN course
ON course.course_id = student_course.course_id;

Task 2 

UPDATE student_course SET completion_status = 'complete' WHERE year =4;
SELECT distinct student_firstname AS name ,student_secondname AS surname, course_title AS title ,course_name AS course, year,completion_status AS status from student
JOIN student_course
ON student.student_id = student_course.student_id
JOIN course
ON course.course_id = student_course.course_id;

Task 3 

delete student from student
join payment 
on student.student_id = payment.student_id
join outstanding
on outstanding.outstanding_id = payment.outstanding_id
where datediff(due_date,payment_date)>180;

select student_firstname , student_secondname, payment_amount, payment_date, due_date, amount_due from student
join payment 
on student.student_id = payment.student_id
join outstanding
on outstanding.outstanding_id = payment.outstanding_id

Task 4 

SELECT DISTINCT student_firstname , student_secondname ,module_name, grade FROM student
JOIN result 
ON student.student_id = result.student_id
JOIN module
ON module.module_id = result.module_id ORDER BY grade DESC;


Task 5

Insert into course(course_id, department_id,course_title,course_name,course_duration,course_level,semester,delivery_method)
values(11,5,’Bachelors of Medicine Honours’,’physiotherapy’,3,8,3,’blended’);



Task 6 

DELETE FROM  student WHERE student_id = 1;

Task 7

SELECT staff_firstname AS firstname, staff_secondname ,sum(num_daysoff) AS total_days from staff
JOIN holiday
ON staff.staff_id = holiday.staff_id
GROUP BY holiday.staff_id
ORDER BY sum(num_daysoff) ASC;

Task 8 

SELECT Distinct course_name, count(course_name) AS number_students from student
JOIN student_course
ON student.student_id = student_course.student_id
JOIN course 
ON course.course_id = student_course.course_id
WHERE course_name = 'business studies';

Task 9

UPDATE staff SET staff_role = 'adminstractor' WHERE staff_role = 'office worker';

Task 10

UPDATE course SET course_title = 'Doctorial' WHERE course_title = 'PHD';

Task 11 

UPDATE course SET delivery_method = 'online' WHERE delivery_method = 'blended' OR delivery_method = 'classroom';

Task 12 

UPDATE collegee SET monday_openingtime = 'closed to visitors',tuesday_openingtime = 'closed to visitors',wednesday_openingtime = 'closed to visitors',thursday_openingtime = 'closed to visitors',friday_openingtime = 'closed to visitors'
WHERE college_name = 'NCI';
SELECT * FROM collegee;






Task 13

Drop table course;


Task 14

DELETE FROM course WHERE course_level <=6;

Task 15

UPDATE collegee SET phone_number = '01-765432' WHERE phone_number = '679-670-0371';

TASK 16 

SELECT lecturer_firstname,lecturer_secondname,position from lecturer
JOIN collegee
ON lecturer.lecturer_id = collegee.lecturer_id;

Task 17

SELECT staff_firstname,staff_secondname,staff_role,years_experience FROM staff WHERE years_experience>4;

Task 18

SELECT distinct course_name,semester,module_name,module_name,num_participants from course
JOIN module
ON course.course_id = module.course_id
WHERE semester >3 OR num_participants>=20;

Task 19

SELECT * FROM student WHERE student_address Like '%road%';



Task 20 

CREATE VIEW departmentInformation
AS 
SELECT 
department_name,
course_name,
name_school
FROM department
INNER JOIN course USING (department_id)
INNER JOIN school USING (department_id);






create table student (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
	student_email VARCHAR(50),
	student_firstname VARCHAR(50),
	student_secondname VARCHAR(50),
	student_address VARCHAR(50)
);
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (1, 'glammenga0@addtoany.com', 'Gerri', 'Lammenga', '30 Doe Crossing Lane');
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (2, 'creolfi1@si.edu', 'Clarita', 'Reolfi', '9104 Morningstar Place');
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (3, 'cmorrill2@pbs.org', 'Christyna', 'Morrill', '9415 Pleasure Street');
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (4, 'iabley3@is.gd', 'Isobel', 'Abley', '514 Walton Street');
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (5, 'agasken4@reference.com', 'Allys', 'Gasken', '6735 Shelley Place');
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (6, 'agowdridge5@google.fr', 'Ami', 'Gowdridge', '2 School Place');
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (7, 'alegier6@examiner.com', 'Arman', 'Legier', '23922 Loomis Plaza');
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (8, 'sgeratt7@digg.com', 'Shelly', 'Geratt', '499 Eastwood Park');
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (9, 'drobertsen8@theglobeandmail.com', 'Dulce', 'Robertsen', '437 Lunder Road');
insert into student (student_id, student_email, student_firstname, student_secondname, student_address) values (10, 'mraison9@dropbox.com', 'Mahmud', 'Raison', '3617 Stone Corner Road');


*/




/*

Foreign Key Constraints 
Course Table 

alter table course
add constraint dp
foreign key (department_id)
references department(department_id)
on delete cascade
on update cascade;

College Table 

alter table collegee
add constraint col
foreign key (lecturer_id)
references lecturer(lecturer_id)
on delete cascade
on update cascade;

Department Table 

alter table department
add constraint dpt
foreign key (college_id)
references collegee(college_id)
on delete cascade
on update cascade;









Payment Table 

alter table payment
add constraint pyt
foreign key (student_id)
references student(student_id)
on delete cascade
on update cascade;

alter table payment
add constraint pyt1
foreign key (fee_id)
references fee(fee_id)
on delete cascade
on update cascade;

Module

alter table module
add constraint mdl
foreign key (lecturer_id)
references lecturer(lecturer_id)
on delete cascade
on update cascade;

alter table module
add constraint mdl1
foreign key (course_id)
references course(course_id)
on delete cascade
on update cascade;

Fee

alter table fee
add constraint fee
foreign key (course_id)
references course(course_id)
on delete cascade
on update cascade;

Staff

alter table staff
add constraint stf
foreign key (department_id)
references department(department_id)
on delete cascade
on update cascade;




Holiday 

alter table holiday
add constraint hld
foreign key (staff_id)
references staff(staff_id)
on delete cascade
on update cascade;



School

alter table school
add constraint shl
foreign key (department_id)
references department(department_id)
on delete cascade
on update cascade;

Lecturer

alter table lecturer
add constraint ltr
foreign key (school_id)
references school(school_id)
on delete cascade
on update cascade;

Result 

alter table result
add constraint rst
foreign key (student_id)
references student(student_id)
on delete cascade
on update cascade;

alter table result
add constraint rst1
foreign key (module_id)
references module(module_id)
on delete cascade
on update cascade;

alter table result
add constraint rst2
foreign key (course_id)
references course(course_id)
on delete cascade
on update cascade;



Student_Course 

alter table student_course
add constraint sc
foreign key (course_id)
references course(course_id)
on delete cascade
on update cascade;

alter table student_course
add constraint sc1
foreign key (student_id)
references student(student_id)
on delete cascade
on update cascade;

*/







