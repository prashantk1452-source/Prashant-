# Data Analyst Portfolio - Prashant Kumar

Hi! I'm Prashant Kumar, a Data Analyst passionate about turning raw data into actionable insights.  
This repository showcases my work across **SQL**, **Python**, and **Power BI**.

---

## Projects Included

### Project 1: OLA Bookings Analysis (SQL + Python + Power BI)

**SQL:** PostgreSQL — `OLA` database  
- 15 analytical queries: booking status, revenue, cancellations, peak hours, vehicle performance, customer ratings  
- Tables: `bookings` (20,407 rows), `bookings_100k` (103,024 rows)  
- [`SQL/OLA_Bookings_Analysis.sql`](SQL/OLA_Bookings_Analysis.sql)

**Python:** Pandas + NumPy + Matplotlib  
- EDA, missing value analysis, vehicle performance, cancellation reasons, peak hours  
- [`Python/OLA_Bookings_Analysis.py`](Python/OLA_Bookings_Analysis.py)

**Power BI:** Interactive dashboard  
- Ride analysis, churn insights, vehicle performance, revenue trends  
- [`PowerBI/OLA_Bookings_Dashboard.pbix`](PowerBI/OLA_Bookings_Dashboard.pbix)

### Project 2: SQL Practice Set (50 Questions)
- **Database:** PostgreSQL — `sql_practice`
- **Tables:** `customers` (7043 rows), `products` (8), `orders` (508)
- **Topics:** SELECT, WHERE, GROUP BY, JOINs, Subqueries, Window Functions
- **Language:** Questions in English + Hindi
- [`SQL/SQL_Practice_Set.md`](SQL/SQL_Practice_Set.md)

### Project 3: Python Practice Set (50 Questions)
- **Topics:** Variables, Strings, Lists, Dicts, Loops, Functions, Lambda, OOP, File Handling, NumPy, Pandas, Data Cleaning
- **Language:** Questions in English + Hindi
- [`Python/Python_Practice_Set.md`](Python/Python_Practice_Set.md)

### Dataset
- `data/bookings_sample.csv` — 103,024 ride bookings (exported from PostgreSQL)

---

## Skills Demonstrated

| Skill | Tools |
|-------|-------|
| **SQL** | PostgreSQL, Joins, Aggregations, CTEs, Window Functions |
| **Python** | Pandas, NumPy, Data Cleaning, EDA, Automation |
| **Power BI** | DAX, Dashboard Design, Data Modeling, KPIs |
| **Data Cleaning** | Handling NULLs, Removing Duplicates, Standardizing Data |
| **Databases** | PostgreSQL, SQLite |

---

## Contact

- **Email:** prashantkumar56125@gmail.com
- **Location:** India

---

## How to Use

### SQL:
```sql
-- Connect to PostgreSQL and analyze bookings
SELECT booking_status, COUNT(*) 
FROM bookings 
GROUP BY booking_status;
```

### Python:
```python
import pandas as pd
df = pd.read_csv('data/bookings_sample.csv')
print(df.head())
```

### Power BI:
Open `.pbix` files in Power BI Desktop to view dashboards.
