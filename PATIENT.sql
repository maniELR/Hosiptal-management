CREATE database HOSPITAL;
USE HOSPITAL;
DROP TABLE  PATIENTS;
CREATE TABLE PATIENTS(
PAT_ID INT primary KEY	,
PAT_NAME varchar(29),
PAT_AGE INT ,
GENDER varchar(29),
CITY varchar (29),
PHONE_NUMBER varchar(15));
INSERT INTO PATIENTS VALUES
(101,'MANI',25,'MALE','CHENNAI','8248300521'),
(102,'REKHA',23,'FEMALE','MADURAI','9363686542'),
(103,'SIVA',85,'MALE','CHENNAI','8578962545'),
(104,'DIVYA',14,'FEMALE','CHENNAI','8796545215');

select*FROM PATIENTS;
drop table doctor;
create table doctor(

doc_id int primary key,
doc_name varchar(30),
department_name varchar(29),
department_id int,
phone_number varchar(20),
experience int,
foreign key (department_id)references department(department_id),
foreign key (department_name)references department (department_name));

insert into doctor values
(201,"vijay","cardiology",2010,"7847454896",5),
(202,"anju","neurology",2022,"8596364512",15),
(203,"priya","ent",2032,"9889784536",2),
(204,"kalai","dermatology",2042,"987123546",19);

select * from doctor;
 drop table department;
CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(29) UNIQUE
);

insert into department values
(2010,"cardiology"),
(2022,"neurology"),
(2032,"ent"),
(2042,"dermatology");
select * from department;

create table appointment(
app_id int primary key,
pat_id int,
doc_id int,
app_date date,
app_time time,
status varchar(30),
foreign key (pat_id)
 references PATIENTS (pat_id),
foreign key (doc_id)
 references doctor (doc_id));
 
 insert into appointment values
 (4545,101,201,"2025-06-22", "10:00:00", 'Completed'),
 (7858,102,202,"2025-07-22","11:20:00",'pending'),
 (9899,103,203,"2025-04-15","13:45:00",'completed'),
 (1010,104,204,"2024-03-23","10:25:00",'pending');
 select * from appointment;
 
create table billing(
bill_id int primary key ,
pat_id int,
app_id int,
bill_amount decimal(10,2),
payment_mode varchar(29),
bill_date date,
foreign key(pat_id)
references PATIENTS (pat_id),
foreign key (app_id)
references appointment(app_id));

insert into billing values
(1101,101,4545,25000,"cash","2025-06-26"),
(1102,102,7858,100000,"upi","2025-07-25"),
(1103,103,9899,85000,"cash","2025-04-20"),
(1104,104,1010,98000,"upi","2025-03-25");
select* from billing;
 create table medicine(
 med_id int primary key,
 med_name varchar(29),
 price decimal(10,2),
 stock int,
 expiry_date date);
 insert into medicine values
 (555,"nailrox",850,25,"2028-12-24"),
 (405,"olamine",1450,10,"2027-07-15"),
 (1011,"fexofenadine",1780,5,"2029-01-25"),
 (2255,"betatine",550,2,"2026-12-24");
 select * from medicine;
 
SHOW TABLES;


SELECT
    a.app_id,
    p.pat_name,
    d.doc_name,
    a.app_date,
    a.app_time,
    a.status
FROM Appointment a
JOIN Patients p
ON a.pat_id = p.pat_id
JOIN Doctor d
ON a.doc_id = d.doc_id;

SELECT
    a.app_id,
    p.pat_name,
    d.doc_name,
    dp.department_name,
    a.app_date,
    a.app_time,
    a.status
FROM Appointment a
JOIN Patients p
ON a.pat_id = p.pat_id
JOIN Doctor d
ON a.doc_id = d.doc_id
JOIN Department dp
ON d.department_id = dp.department_id;

SELECT *
FROM Appointment
WHERE status = 'Completed';

SELECT *
FROM Appointment
WHERE status = 'Pending';


SELECT
    d.doc_name,
    COUNT(a.app_id) AS Total_Appointments
FROM Appointment a
JOIN Doctor d
ON a.doc_id = d.doc_id
GROUP BY d.doc_name;



#22 appointment reports
SELECT
    a.app_id,
    p.pat_name,
    d.doc_name,
    dp.department_name,
    a.app_date,
    a.app_time,
    a.status
FROM Appointment a
JOIN Patients p
ON a.pat_id = p.pat_id
JOIN Doctor d
ON a.doc_id = d.doc_id
JOIN Department dp
ON d.department_id = dp.department_id;




#doctors reports

SELECT
    d.doc_name,
    COUNT(a.app_id) AS Total_Appointments,
    RANK() OVER(ORDER BY COUNT(a.app_id) DESC) AS Doctor_Rank
FROM Doctor d
JOIN Appointment a
ON d.doc_id = a.doc_id
GROUP BY d.doc_name;
# Patient Analysis Reports

SELECT
    gender,
    COUNT(*) AS Total_Patients
FROM Patients
GROUP BY gender;

SELECT
    AVG(age) AS Average_Age
FROM Patients;
#City-wise Reports


SELECT
    city,
    COUNT(*) AS Total_Patients
FROM Patients
GROUP BY city;

#Billing Reports
SELECT
    b.bill_id,
    p.pat_name,
    b.bill_amount,
    b.payment_mode,
    b.bill_date
FROM Billing b
JOIN Patients p
ON b.pat_id = p.pat_id;       
    
   
   SELECT 
    SUM(bill_amount) AS Total_Revenue
FROM Billing;

