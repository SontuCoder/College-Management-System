create database school_project;
use school_project;

create table depertment(
dept_id varchar(5) primary key,
dept_name varchar(30) not null unique,
dept_head varchar(10)
);

create table teacher(
teacher_id varchar(10) primary key,
f_name varchar(10) not null,
l_name varchar(10) not null,
email varchar(10) not null unique,
ph_no int(10) not null unique,
dept_id varchar(5) not null,
foreign key(dept_id) references depertment(dept_id)
on delete cascade on update cascade
);

create table student(
st_id varchar(10) primary key,
f_name varchar(10) not null,
l_name varchar(10) not null,
dob date not null,
gender varchar(10) not null,
email varchar(10) not null,
ph_no int(10) not null,
pincode int(6) not null,
city varchar(10) not null,
district varchar(25) not null,
dept_id varchar(5) not null,
foreign key(dept_id) references depertment(dept_id)
on delete cascade on update cascade
);

create table course(
course_id varchar(10) primary key,
course_name varchar(10) not null,
course_subjects varchar(100) not null,
creadits int(2) not null,
dept_id varchar(5) not null,
foreign key(dept_id) references depertment(dept_id)
on delete cascade on update cascade
);

create table login_signup(
st_id varchar(10),
st_pass varchar(10) not null,
foreign key(st_id) references student(st_id)
on delete cascade on update cascade
);

create table class_room(
class_id varchar(5) primary key,
building_no varchar(2) not null,
room_no int(3) not null unique,
capacity int(3) not null
);

use library;
describe booklist;

