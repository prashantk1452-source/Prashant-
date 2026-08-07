# Customer Shopping Behavior Analysis

End-to-end data analytics project analyzing 3,900 customer purchases to uncover
spending patterns, customer segments, product preferences, and subscription
behavior.

## Project Workflow

1. **Python (EDA & Data Preparation)** — Clean and transform the raw dataset:
   - Data loading & exploration (pandas)
   - Missing value imputation (Review Rating filled with category median)
   - Column standardization (snake_case)
   - Feature engineering (`age_group`, `purchase_frequency_days`)
   - Data consistency checks (removed redundant `promo_code_used`)
   - Loaded cleaned data into PostgreSQL

2. **SQL (Analysis)** — 10 business queries in PostgreSQL:
   - Revenue by gender
   - High-spending discount users
   - Top 5 products by review rating
   - Shipping type comparison (Standard vs Express)
   - Subscribers vs non-subscribers
   - Customer segmentation (New / Returning / Loyal)
   - Top 3 products per category (window function)
   - Repeat buyers & subscription behavior
   - Revenue contribution by age group

3. **Power BI (Visualization)** — Interactive dashboard highlighting:
   - Revenue KPIs and trends
   - Sales by product category
   - Customer segmentation breakdown
   - Discount impact analysis

4. **Report & Presentation** — Key findings and business recommendations
   documented for stakeholders.

## Files

| File | Description |
|------|-------------|
| `Python/Customer_Shopping_Behavior_Analysis.ipynb` | Full EDA & data prep notebook |
| `SQL/customer_behavior_sql_queries.sql` | 10 analysis queries |
| `PowerBI/customer_behavior_dashboard.pbix` | Interactive Power BI dashboard |
| `Data/customer_shopping_behavior.csv` | Raw dataset (3,900 rows) |
| `Docs/Business_Problem.pdf` | Problem statement |
| `Docs/Customer_Report.pdf` | Final project report |
| `Docs/Customer_Presentation.pptx` | Stakeholder presentation |

## Business Recommendations

- Boost subscriptions — promote exclusive subscriber benefits
- Launch loyalty programs — reward repeat buyers
- Review discount policy — balance sales growth with margins
- Targeted marketing — focus on high-revenue age groups and express-shipping users
