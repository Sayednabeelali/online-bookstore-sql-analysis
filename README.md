# 📚 Online Bookstore Sales & Customer Analysis

A SQL-based data analysis project built around an **online bookstore database** to explore books, customers, orders, sales performance, and inventory.

---

## 📌 Project Overview

This project demonstrates how SQL can be used to transform relational bookstore data into meaningful business insights.

The database consists of three interconnected tables:

* **Books**
* **Customers**
* **Orders**

The project includes SQL queries ranging from basic filtering and aggregation to multi-table analysis using **JOIN, GROUP BY, HAVING, ORDER BY, aggregate functions, and conditional logic**.

---

## 🎯 Project Objectives

The analysis focuses on:

* Exploring bookstore inventory
* Analyzing customer information
* Evaluating order activity
* Calculating total revenue
* Identifying popular books and genres
* Analyzing customer spending
* Measuring books sold by genre and author
* Identifying high-value customers
* Evaluating remaining inventory after orders

---

## 🗄️ Database Schema

```text
                    ┌──────────────────┐
                    │      Books       │
                    ├──────────────────┤
                    │ Book_ID (PK)     │
                    │ Title            │
                    │ Author           │
                    │ Genre            │
                    │ Published_Year   │
                    │ Price            │
                    │ Stock            │
                    └────────┬─────────┘
                             │
                             │ Book_ID
                             │
                    ┌────────▼─────────┐
                    │      Orders      │
                    ├──────────────────┤
                    │ Order_ID (PK)    │
                    │ Customer_ID (FK) │
                    │ Book_ID (FK)     │
                    │ Order_Date       │
                    │ Quantity         │
                    │ Total_Amount     │
                    └────────┬─────────┘
                             │
                             │ Customer_ID
                             │
                    ┌────────▼─────────┐
                    │    Customers     │
                    ├──────────────────┤
                    │ Customer_ID (PK) │
                    │ Name             │
                    │ Email            │
                    │ Phone            │
                    │ City             │
                    │ Country          │
                    └──────────────────┘
```

---

## 🛠️ Tools & Technologies

* **PostgreSQL**
* SQL
* Relational Database Design
* Data Analysis
* Data Aggregation
* Data Filtering
* Database Joins

---

## 🔍 SQL Concepts Demonstrated

This project covers practical SQL concepts including:

* `CREATE DATABASE`
* `CREATE TABLE`
* Primary Keys
* Foreign Keys
* `SELECT`
* `WHERE`
* `BETWEEN`
* `DISTINCT`
* `ORDER BY`
* `LIMIT`
* `SUM()`
* `AVG()`
* `COUNT()`
* `GROUP BY`
* `HAVING`
* `JOIN`
* `LEFT JOIN`
* `COALESCE()`

---

## 📊 Analysis Performed

The project contains **20 SQL analysis queries**, including:

### 📚 Book Analysis

* Retrieve books from the Fiction genre
* Find books published after 1950
* Identify the most expensive book
* Find the book with the lowest stock
* Identify available genres
* Find the top 3 most expensive Fantasy books
* Calculate the average price of Fantasy books

### 👥 Customer Analysis

* Identify customers from Canada
* Find customers who placed at least two orders
* Identify the highest-spending customer
* Find cities containing customers with orders above a specified amount

### 🛒 Order & Sales Analysis

* Retrieve orders placed during November 2023
* Find orders containing more than one book
* Identify orders exceeding a specified value
* Calculate total revenue
* Find the most frequently ordered book
* Calculate books sold by genre
* Calculate books sold by author

### 📦 Inventory Analysis

* Calculate total available stock
* Calculate remaining stock after fulfilling orders

---

## 💡 Business Questions Answered

The analysis helps answer questions such as:

> Which book is the most expensive?

> Which genres generate the highest number of book sales?

> Who is the highest-spending customer?

> Which book is ordered most frequently?

> How many books remain after fulfilling customer orders?

> Which authors have sold the most books?

> Which customers have made multiple purchases?

These questions demonstrate how SQL can support **real-world business and sales analysis**.

---

## 🔄 Project Workflow

```text
Database Creation
       ↓
Table Creation
       ↓
Data Import
       ↓
Data Exploration
       ↓
SQL Analysis
       ↓
Business Questions
       ↓
Insights
```

---

## 📂 Repository Structure

```text
online-bookstore-sql-analysis/
│
├── README.md
│
└── sql/
    └── online_bookstore_analysis.sql
```

---

## 🚀 How to Run

### Requirements

* PostgreSQL
* pgAdmin 4 or PostgreSQL command line

### Steps

1. Clone this repository.
2. Open PostgreSQL or pgAdmin.
3. Run the database creation section.
4. Import the bookstore data into the respective tables.
5. Execute the analysis queries.
6. Review the results and insights.

---

## 📚 What I Learned

Through this project, I strengthened my understanding of:

* Relational database design
* Writing analytical SQL queries
* Joining multiple tables
* Aggregating business data
* Filtering and grouping datasets
* Analyzing sales and customer behavior
* Translating business questions into SQL queries

---

## 👨‍💻 Author

### Sayed Nabeel Ali

**B.Tech CSE — Artificial Intelligence & Machine Learning**

**Aspiring Data Analyst | AI/ML Enthusiast**

### Connect With Me

* **GitHub:** https://github.com/Sayednabeelali
* **LinkedIn:** https://www.linkedin.com/in/nabeel-ali

---

⭐ If you found this project useful, feel free to explore the repository.

