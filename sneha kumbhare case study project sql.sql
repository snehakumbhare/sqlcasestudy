create database hospital;
use hospital;

-- QUE 1
create table patient(doj date, patient_id int, patient_name varchar(45), age varchar(35), weight varchar(35), gender char(1), 
location varchar(50), phone_number varchar(15), disease varchar(20), doctor_name varchar(50), doctor_id int); 

-- QUE 2
insert into patient values('2021-02-20','90','Mohan','35','65','M','Nagpur','9898989898','Diabetes','DR.Sachin','101');
insert into patient values('2021-02-22','91','Geeta','25','52','F','Pune','7676767676','Depression','DR.Sanchi','102');
insert into patient values('2021-02-25','92','Seema','56','65','F','Bhopal','4545454545','Anxiety','DR.Raghav','103');
insert into patient values('2021-02-27','93','Rohan','36','75','M','Nagpur','7878787878','Yeast infection','DR.Raghu','104');
insert into patient values('2021-03-12','94','Meena','45','55','F','Mumbai','1212121212','Lupus','DR.Kabir','105');
insert into patient values('2021-03-14','95','Seeta','32','53','F','Ujjain','3434343434','Chickenpox','DR.Priya','106');
insert into patient values('2021-03-16','96','Ram','35','85','M','Gwalior','6363636363','Common cold','DR.Krishna','107');
insert into patient values('2021-03-18','97','Radha','25','49','F','Mathura','8989898989','Diphtheria','DR.Siya','108');
insert into patient values('2021-03-20','98','Maya','35','55','F','Nagpur','1717171717','E.coli','DR.Sachin','101');
insert into patient values('2021-03-22','99','Rajat','35','75','M','Puna','8181818181','Diabetes','DR.Krishna','107');
insert into patient values('2021-03-24','100','Bhumika','25','49','F','Bhopal','5656565656','Common cold','DR.Sanchi','102');
insert into patient values('2021-03-26','101','Ritika','35','55','F','Nashik','1367890234','Chickenpox','DR.Raghu','104');
insert into patient values('2021-03-28','102','Nitisha','22','50','F','Mumbai','7892345710','Anxiety','DR.Priya','106');
insert into patient values('2021-04-11','103','Neesha','35','54','F','Gwalior','8451934025','Lupus','DR.Sachin','101');
insert into patient values('2021-04-14','104','Geeta','35','55','F','Nagpur','6785320198','Diabetes','DR.Sachin','101');

select*from patient;

-- QUE 3
select count(patient_id) from patient;

-- QUE 4
select patient_id,patient_name, gender, disease,max(age) from patient;

-- QUE 5    
select patient_id,patient_name, curdate()
from patient;

-- QUE 6
select upper(patient_name)
from patient;

-- QUE 7
select patient_name, LENGTH(patient_name)
from patient;

-- QUE 8
select patient_name, 
substring(gender,1,1)
from patient;

-- QUE 9
select concat(patient_name,doctor_name) 
from patient;

-- QUE 10

select age, log10(age) as GRADELOG10
from patient;

-- QUE 11

select year(doj) from patient;

-- QUE 12
select patient_name,doctor_name,
case when patient_name=doctor_name then null else patient_name end
from patient;

-- QUE 13
select if(age>40,'yes','no') from patient;

-- QUE 14
select doctor_name,count(*)
from patient group by doctor_name 
having count(*)>1;