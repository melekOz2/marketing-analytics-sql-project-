# Marketing Analytics SQL Project

A portfolio-focused SQL project built with **PostgreSQL (DBeaver)** and **BigQuery**, centered on **campaign performance analysis**, **GA4 e-commerce funnel tracking**, and **conversion insights**.

---

## Project Overview

This project combines two analytics environments:

- **PostgreSQL (DBeaver)** for online advertising campaign analysis
- **BigQuery + GA4 public e-commerce dataset** for session-based funnel and conversion analysis

The project demonstrates practical SQL skills in:

- campaign performance evaluation
- ROMI and spend analysis
- weekly and monthly trend detection
- session-based funnel calculations
- landing page conversion comparison
- engagement and purchase relationship analysis

---

## Tools Used

- **PostgreSQL**
- **DBeaver**
- **Google BigQuery**
- **Google Analytics 4 (GA4)**
- **SQL**

---

## Tasks Completed

### 1. Campaign Performance Analysis (PostgreSQL / DBeaver)

Analyzed Facebook and Google Ads campaign data using SQL.

**Completed tasks:**
- Daily spend metrics (**average, minimum, maximum**)
- Top 5 days by total **ROMI**
- Weekly campaign with the highest total **value**
- Monthly campaign with the biggest **reach growth**
- Longest continuous **impressions** period by adset

---

### 2. BI Data Preparation (BigQuery / GA4)

Prepared a filtered event-level table from the **GA4 public e-commerce dataset**.

**Included:**
- event timestamp conversion
- session ID extraction
- user and device information
- traffic source dimensions
- campaign attribution fields
- selected e-commerce funnel events only

**Tracked events:**
- `session_start`
- `view_item`
- `add_to_cart`
- `begin_checkout`
- `add_shipping_info`
- `add_payment_info`
- `purchase`

---

### 3. Conversion Calculation by Traffic Channel and Date

Built a session-based conversion table grouped by:

- `event_date`
- `source`
- `medium`
- `campaign`

**Calculated:**
- unique sessions
- visit-to-cart conversion
- visit-to-checkout conversion
- visit-to-purchase conversion

---

### 4. Landing Page Conversion Comparison

Compared landing pages based on purchase behavior.

**Calculated:**
- unique user sessions
- purchase count
- purchase conversion rate

This analysis used session-level matching with:

- `user_pseudo_id`
- `session_id`

---

### 5. Engagement vs Purchase Correlation Analysis

Analyzed whether user engagement is related to purchasing behavior.

**For each session:**
- checked whether the session was engaged
- calculated total engagement time
- checked whether a purchase happened

**Compared:**
- engagement presence vs purchase
- engagement duration vs purchase

---

## Key Skills Demonstrated

- Writing analytical SQL queries
- Working with **CTEs**, aggregations, and joins
- Session-based event modeling
- Funnel analysis with GA4 event data
- Conversion rate calculation
- Campaign performance measurement
- Marketing analytics reporting
- Data preparation for BI reporting

---

<img width="1528" height="790" alt="image" src="https://github.com/user-attachments/assets/c733fb77-665a-4be9-b620-25dd4990b85b" />


Author

Melike Emine Özyavuz

Aspiring Data Analyst with experience in:

- SQL
- Excel / Google Sheets
- Tableeau / Power BI
- BigQuery
-QA & Test Automation foundations

Notes

This repository was created as a portfolio-oriented SQL project to demonstrate practical skills in:

- marketing analytics
- campaign analysis
- conversion funnel logic
- session-based behavioral analysis
- PostgreSQL + BigQuery workflows



