# student-database-management-system
"A MySQL-based Student Management System built to track student demographics, map course structures, and analyze academic performance using views, indexes, and stored procedures."

# Student Management System & Performance Analysis

## 📌 Project Overview
This project focuses on designing and implementing a relational database for a **Student Management System** using MySQL. Beyond standard database creation, the primary objective is to execute **data-driven analysis** on student enrollment trends and academic performance metrics, uncovering key insights such as subject averages and top-performing students.

## 🛠️ Tech Stack & SQL Concepts Used
* **Database Engine:** MySQL
* **Data Definition Language (DDL):** `CREATE DATABASE`, `CREATE TABLE`, `ALTER TABLE` (Foreign Key constraints)
* **Data Manipulation Language (DML):** `INSERT INTO`, `SELECT` filtering
* **Analytical Techniques:** `GROUP BY`, `HAVING`, Aggregations (`AVG`, `MAX`, `MIN`), `ORDER BY`, `LIMIT`
* **Advanced Database Objects:** Database Views (`CREATE VIEW`), Performance Optimization (`CREATE INDEX`), and Automations (Stored Procedures).

## 🗄️ Database Schema & Relationships
The database consists of three interconnected tables:
1. **`students1`**: Captures demographic details (ID, Name, Email, City, Course, and Admission Date).
2. **`courses1`**: Holds curriculum structures and fee metrics.
3. **`marks1`**: Tracks subject-wise scores achieved by students, linked dynamically to the `students1` table via a **Foreign Key constraint** (`fk_marks_student`).

## 📈 Key Insights & Query Breakdowns
The script answers several critical academic and operational questions:
* **Demographic Segmentation:** Filters student distribution natively by location (e.g., retrieving cohorts originating from *Pune*).
* **Performance Benchmark:** Isolates the peak score achieved across the entire institute using `MAX()`.
* **Subject-Level Analysis:** Groups and calculates the average score per subject to identify structural curriculum performance.
* **Top Performers (Leaderboard):** Utilizes `ORDER BY` and `LIMIT 3` to programmatically extract the top 3 students based on their cumulative average marks.

## 🚀 Advanced Implementations
* **Performance Monitoring View (`student_performance2`):** A virtual table designed to consolidate each student's average, maximum, and minimum scores into a single reporting layer.
* **Search Optimization Index (`idx_students`):** Implemented a B-Tree index on the `student_name` column to accelerate search retrieval operations.
* **Automated Data Retrieval (`student_mark` Stored Procedure):** Encapsulated query logic into a reusable procedure that fetches comprehensive marksheets dynamically based on any provided `student_id` input parameter.

---
*Developed as a portfolio project for Data Analytics Internships.*
