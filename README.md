# Data Analyst Portfolio - Prashant Kumar

Hi! I'm Prashant Kumar, a Data Analyst passionate about turning raw data into actionable insights.  
This repository showcases my work across **SQL**, **Python**, **Power BI**, and **Machine Learning**.

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

### Project 2: Machine Learning Q&A (20 Questions)
- Conversational style — Hindi + English  
- Topics: Supervised/Unsupervised, Regression, Classification, Overfitting, Feature Engineering, Model Evaluation  
- [`Python/Machine_Learning_QA.md`](Python/Machine_Learning_QA.md)

### Project 3: Python Practice Set (50 Questions)
- **Topics:** Variables, Strings, Lists, Dicts, OOP, File Handling, NumPy, Pandas, Data Cleaning
- [`Python/Python_Practice_Set.md`](Python/Python_Practice_Set.md)

### Dataset & Docs
- `data/bookings_sample.csv` — 103,024 ride bookings (exported from PostgreSQL)
- `docs/OLA-Project-Guide.pdf` — Project reference guide

---



## Skills Demonstrated

| Skill | Tools |
|-------|-------|
| **SQL** | PostgreSQL, Joins, Aggregations, CTEs, Window Functions |
| **Python** | Pandas, NumPy, Data Cleaning, EDA, Automation |
| **Power BI** | DAX, Dashboard Design, Data Modeling, KPIs |
| **Machine Learning** | Regression, Classification, Clustering, Model Evaluation |
| **Data Cleaning** | Handling NULLs, Removing Duplicates, Standardizing Data |

---

## Contact

- **Email:** prashantkumar56125@gmail.com
- **LinkedIn:** https://linkedin.com/in/prashantkumar-10a22b394
- **Location:** Bodhgaya, Bihar, India

---

## How to Use

### SQL:
```sql
SELECT booking_status, COUNT(*) FROM bookings GROUP BY booking_status;
```

### Python:
```python
import pandas as pd
df = pd.read_csv('data/bookings_sample.csv')
print(df.head())
```

### Power BI:
Open `.pbix` files in Power BI Desktop to view dashboards.
