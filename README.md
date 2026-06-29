# 🏥 Hospital Management System using SQL

A complete **Hospital Management System Database** built using **MySQL** to manage patients, doctors, appointments, billing, departments, and hospital reports. This project demonstrates database design, SQL queries, relationships, joins, aggregate functions, views, stored procedures, and report generation.

---

# 📌 Project Overview

The Hospital Management System is designed to efficiently manage hospital records by storing and retrieving patient, doctor, appointment, billing, and department information.

The database uses **Primary Keys**, **Foreign Keys**, and relational tables to maintain data integrity and enable efficient querying.

---

# 🎯 Objectives

* Manage patient information
* Maintain doctor records
* Store department details
* Schedule appointments
* Generate billing records
* Analyze hospital data using SQL queries
* Practice SQL concepts like Joins, Views, Procedures, and Aggregate Functions

---

# 🛠 Technologies Used

* MySQL
* SQL
* MySQL Workbench

---

# 📂 Database Tables

The project consists of the following tables:

* 👤 Patients
* 👨‍⚕️ Doctors
* 🏢 Departments
* 📅 Appointments
* 💰 Billing

Each table is connected using appropriate **Primary Keys** and **Foreign Keys**.

---

# 📊 Database Features

## Patient Management

* Add new patients
* Update patient details
* Delete patient records
* View patient information

---

## Doctor Management

* Store doctor details
* Assign doctors to departments
* Track doctor experience
* Maintain contact information

---

## Department Management

* Department ID
* Department Name
* Department Location

---

## Appointment Management

* Schedule appointments
* Assign patients to doctors
* Track appointment dates
* Maintain appointment status

---

## Billing Management

* Generate bills
* Payment mode tracking
* Bill amount
* Billing date

---

# 🧠 SQL Concepts Used

This project demonstrates the use of:

* CREATE DATABASE
* CREATE TABLE
* INSERT INTO
* SELECT
* UPDATE
* DELETE
* ALTER TABLE
* DROP TABLE
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* LIMIT
* DISTINCT
* Aggregate Functions

  * COUNT()
  * SUM()
  * AVG()
  * MIN()
  * MAX()
* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* Views
* Stored Procedures
* Constraints
* Primary Key
* Foreign Key

---

# 📈 Sample Reports

The database can generate reports such as:

* ✅ Patient Reports
* ✅ Doctor Ranking Reports
* ✅ Department-wise Reports
* ✅ Appointment Reports
* ✅ Billing Reports
* ✅ City-wise Patient Reports
* ✅ Revenue Analysis
* ✅ Doctor-wise Appointment Count

---

# 📁 Project Structure

```text
Hospital-Management-System/
│
├── PATIENT.sql
├── README.md
```

---

# 🚀 How to Run the Project

### Step 1

Clone the repository.

```bash
git clone https://github.com/yourusername/Hospital-Management-System.git
```

### Step 2

Open **MySQL Workbench**.

### Step 3

Create a new SQL file or import `PATIENT.sql`.

### Step 4

Execute the SQL script.

### Step 5

The database and all tables will be created automatically.

---

# 🗄 Database Schema

```text
Hospital
│
├── Patients
├── Doctors
├── Departments
├── Appointments
└── Billing
```

Relationships:

* One Department ➜ Many Doctors
* One Doctor ➜ Many Appointments
* One Patient ➜ Many Appointments
* One Appointment ➜ One Billing Record

---

# 📌 Learning Outcomes

By completing this project, you will gain practical experience in:

* Relational Database Design
* SQL Query Writing
* Data Normalization
* Table Relationships
* Joins
* Aggregate Functions
* Constraints
* Report Generation
* Real-world Database Management

---

# 🌟 Future Enhancements

* User Authentication
* Prescription Management
* Pharmacy Module
* Laboratory Module
* Bed Allocation System
* Online Appointment Booking
* Dashboard with Power BI
* Backup & Restore Automation

---

# 👨‍💻 Author

**Manikandan**

**Aspiring Data Analyst | SQL Developer | Power BI Enthusiast**

---

# ⭐ Support

If you found this project useful, consider giving the repository a **⭐ Star** and sharing your feedback!

Happy Coding! 🚀
