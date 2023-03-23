create table user(
    id int primary key AUTO_INCREMENT,
    name varchar(250),
    dob varchar(20),
    contactNumber varchar(20),
    email varchar(50),
    password varchar(250),
    age varchar(2),
    courseid varchar(10),
    coursename varchar(50),
    status varchar(20),
    role varchar(20),
    UNIQUE (email)
);
create table courses(
    id int primary key AUTO_INCREMENT,
    courseid varchar(250),
    coursename varchar(250),
    UNIQUE (courseid)
);
insert into user(name,dob,contactNumber,email,password,age,courseid,coursename,status,role) values('PRAJWAL','19/03/2002','9482489140','1rn20is108.prajwalbpb@gmail.com','Pajju','20','2','INFORMATION SCIENCE ','true','Admin');

create table faculty(
    id int primary key AUTO_INCREMENT,
    name varchar(250),
    contactNumber varchar(20),
    email varchar(50),
    password varchar(250),
    age varchar(2),
    courseid varchar(10),
    coursename varchar(50),
    status varchar(20),
    role varchar(20),
    UNIQUE (email)
);
create table payfee(
    id int primary key AUTO_INCREMENT,
    name varchar(250),
    contactNumber varchar(20),
    email varchar(50),
    paymentmode varchar(20),
    transactionid varchar(25),
    bankname varchar (10),
    coursename varchar(20),
    status varchar(20),
    role varchar(20),
    UNIQUE (email)
);
insert into payfee(name,contactNumber,email,paymentmode,transactionid,bankname,coursename,status,role) values('PRAJWAL','9482489140','prajwalbpb@gmail.com','online','BD604GH54878SBI','SBI','INFORMATION SCIENCE ','true','Admin');

insert into faculty(name,contactNumber,email,password,age,courseid,coursename,status,role) values('PRAJWAL','9482489140','prajwalbpbarlaya.prajwalbpb@gmail.com','Pajju','20','2','INFORMATION SCIENCE ','true','Admin');


create table category(

  id int NOT NULL AUTO_INCREMENT,
  name varchar(255)NOT NULL,
  primary key(id)
);
insert into category(name)values ('COMPUTER SCIENCE');

create table product(
    id int NOT NULL AUTO_INCREMENT ,
    name varchar(255) NOT NULL,
    categoryId integer NOT NULL,
    description varchar(255),
    price integer,
    status varchar(20),
    primary key(id)
);
create table bill(
id int NOT NULL AUTO_INCREMENT,
uuid varchar(255) NOT NULL,
name varchar(255) NOT NULL,
email varchar(255) NOT NULL,
contactNumber varchar(20) NOT NULL ,
paymentMethod varchar(50) NOT NULL,
total int NOT NULL,
productDetails JSON DEFAULT NULL,
createdBy varchar(255)  NULL,
primary key(id)
);
create table admin(
    id int primary key AUTO_INCREMENT,
     email varchar(50),
    password varchar(250),
    UNIQUE (email)
);
insert into admin(email,password) values('1rn2is108.prajwalbpb@gmail.com','Pajju');
