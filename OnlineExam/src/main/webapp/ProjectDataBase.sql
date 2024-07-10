create database my_project_exam;
use my_project_exam;
create table users(
    user_id int auto_increment primary key,
    username varchar(30) not null ,
    password varchar(30) not null,
    email varchar(20) unique not null,
    contact_no varchar(15)not null);
    
create table exams (
    exam_id int auto_increment primary key,
    exam_name varchar(100)not null,
    exam_date date not null,
    duration int not null,
    total_marks int not null);
    
create table questions(
id int auto_increment primary key,
exam_id int not null,
exam_name varchar(100) not null,
question_text text not null,
option1 varchar(50) not null,
option2 varchar(50)not null,
option3 varchar(50) not null,
option4 varchar(50)not null,
correct_answer varchar(50)not null,
foreign key (exam_id) references exams(exam_id));

create table results (
    result_id int auto_increment primary key,
    user_id int not null,
    exam_id int not null,
    marks_obtained int not null,
    foreign key (user_id) references users(user_id),
    foreign key(exam_id) references exams(exam_id));

create table skills(
	skill_id int auto_increment primary key,
    skill_name varchar(50) not null,
    created_at timestamp default current_timestamp);
    
 create table user_exam(
 user_exam_id int auto_increment primary key,
 user_id int not null,
 exam_id int not null,
 exam_date timestamp default current_timestamp,
 foreign key (user_id) references users(user_id),
 foreign key(exam_id) references exams(exam_id));

    
create table user_skills(
	user_skill_id int auto_increment primary key,
    user_id int not null,
    skill_id int not null,
    skill_level int not null,
	evaluated_at timestamp default current_timestamp,
    foreign key (user_id) references users(user_id),
    foreign key(skill_id) references skills(skill_id));
    
select * from  users;
select * from exams;
select * from questions;
select * from results;
select * from skills;
select * from user_exam;
select * from user_skills;

drop table users;
drop table exam;
drop table questions;
drop table results;
drop table skills;
drop table user_exam;
drop table user_skills;
