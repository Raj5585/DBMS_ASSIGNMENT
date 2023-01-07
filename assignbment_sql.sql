CREATE DATABASE db;
 USE db;
 
--  Question number - 1

 CREATE TABLE employee ( 
 empname varchar(200) primary key ,
 street varchar(200),
 city varchar(200)
 );
 
 CREATE TABLE works(
 empname varchar(200) primary key,
 compname varchar(200),
 salary int,
FOREIGN KEY (empname) REFERENCES employee(empname),
FOREIGN KEY (compname) REFERENCES company(compname)
 );
 
 CREATE TABLE company(
 compname varchar(200) primary key,
 compcity varchar(200)
 );
 
 CREATE TAbLE manages( 
 empname varchar(200) primary key,
 managername varchar(200),
FOREIGN KEY (empname) REFERENCES employee(empname)
 );
 
 INSERT INTO employee (empname, street, city) 
 VALUES ('Raj', 'manamaiju', 'kathmandu'),
 ('sajjan', 'chbahil', 'kathmandu'),
 ('bishnu', 'amarshing', 'pokhara'),
 ('prabin sharma' , 'Raniban', 'chitwan'),
 ('prabin', 'armychowk', 'Ramechap');
 
 INSERT INTO works (empname, compname, salary)
 VALUES ('raj', 'logpoint', 300000),
 ('sajjan' , 'javra', 200000),
 ('bishnu', 'mandala' , 30000),
 ('Prabin sharma', 'mymusic', 100000),
 ('prabin', 'thapathali', 150000);
 
 INSERT INTO company (compname, compcity) 
 VALUES ('logpoint', 'kathmandu'),
 ('javra', 'kathmandu'),
 ('mandala', 'pokhara'),
 ('mymusic', 'pokhara'),
 ('thapathali', 'kathmandu');
 
 INSERT INTO manages (empname, managername)
 VALUES ('raj', 'anishma'),
 ('prabin sharma', 'parbati'),
 ('prabin', 'pratima'),
 ('sajjan', 'fathaa'),
 ('bishnu', 'laxmi');
 
--  2.a
SELECT empname FROM  employee ;

-- 2.b
SELECT empname , city FROM employee;

-- 2.c
SELECT empname, street,city FROM works, employee
WHERE salary >= 100000 ;