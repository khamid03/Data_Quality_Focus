# 📊 Data Quality Checking Project

## 📌 Overview

This project performs data quality validation using SQL scripts.

The goal is to detect incorrect, inconsistent, or suspicious data before using it for analytics or reporting.

Each SQL file represents one specific data quality rule.

The project focuses on:

- NULL value checks  
- Duplicate detection  
- Logical consistency checks  
- Revenue validation  
- Date validation  
- Price and quantity validation  

No foreign keys or complex constraints are used.  
All checks are implemented using SQL queries.

---

## 📂 Project Structure

### Table Creation Scripts
- create_table_staging.sql – Creates staging tables for raw data  
- create_table.sql – Creates final tables   

---

## ✅ Data Quality Checks

### 1. Null Checks
- check_null.sql – Detects NULL values in important columns  
- check_null_customer.sql – Checks for missing customer information  

### 2. Duplicate Checks
- duplicate_invoice_lines.sql – Finds duplicated invoice line records  
- duplicate_invoices_without_details.sql – Detects duplicated invoices without proper details  

### 3. Quantity and Price Validation
- extreme_quantity.sql – Detects unusually large or suspicious quantities  
- unitprice_higher_zero.sql – Ensures unit price is greater than zero  

### 4. Sales and Revenue Validation
- none_zero_sales.sql – Checks that sales values are not zero  
- revenue_consistensy.sql – Verifies revenue consistency (e.g., quantity × unit price)  

### 5. Date Validation
- invoice_not_future.sql – Ensures invoice date is not in the future  
- none_old_data.sql – Checks for outdated or invalid old records  

### 6. Data Completeness
- no_descrip_with_stockcode.sql – Ensures that items with stock codes have descriptions  

---

## 🔄 Workflow

Raw Data  
→ Staging Tables  
→ Run Data Quality Scripts   

Each script is run independently to identify specific data issues.

---

## ▶️ How to Run

1. Create staging and final tables:
   - Run create_table_staging.sql
   - Run create_table.sql

2. Load raw data into staging tables. Then Run - upload_data_to_realtable.sql

3. Run quality check scripts individually:
   - check_null.sql
   - duplicate_invoice_lines.sql
   - extreme_quantity.sql
   - etc.   

---

## 🛠️ Technologies Used

- SQL  
- PostgreSQL  

---

## 🎯 Purpose

This project demonstrates practical SQL-based data validation techniques.

