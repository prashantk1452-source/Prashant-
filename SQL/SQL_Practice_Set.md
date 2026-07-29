SQL PRACTICE SET (50 Questions with Answers)
=============================================
Database: sql_practice
Tables: customers, products, orders

(Hindi + English | Basic to Advanced)

=== LEVEL 1: BASIC SELECT & WHERE (1-10) ===

Q1. EN: Show all data from customers table.
    HI: customers table se saara data dikhao.
Ans: SELECT * FROM customers;

Q2. EN: Show customers where churn is Yes.
    HI: Sirf churn='Yes' wale customers dikhao.
Ans: SELECT * FROM customers WHERE churn = 'Yes';

Q3. EN: Count customers where gender is Male AND churn is Yes.
    HI: Gender male aur churn='Yes' wale customers count karo.
Ans: SELECT COUNT(*) FROM customers WHERE gender = 'Male' AND churn = 'Yes';

Q4. EN: Show customers with monthly charges greater than 70.
    HI: Monthly charges 70 se zyada wale customers dikhao.
Ans: SELECT * FROM customers WHERE monthlycharges > 70;

Q5. EN: What is the total count of customers?
    HI: Customers ki total count kya hai?
Ans: SELECT COUNT(*) FROM customers;

Q6. EN: What are the unique contract types?
    HI: Unique contract types kya hain?
Ans: SELECT DISTINCT contract FROM customers;

Q7. EN: How many customers have tenure = 0?
    HI: Tenure 0 wale customers kitne hain?
Ans: SELECT COUNT(*) FROM customers WHERE tenure = 0;

Q8. EN: Show customers who are Senior Citizens.
    HI: SeniorCitizen=Yes wale customers dikhao.
Ans: SELECT * FROM customers WHERE seniorcitizen = 'Yes';

Q9. EN: What are the unique payment methods?
    HI: PaymentMethod ke unique values kya hain?
Ans: SELECT DISTINCT paymentmethod FROM customers;

Q10. EN: Average monthly charges for customers with DSL internet?
     HI: InternetService='DSL' wale customers ka average monthly charges?
Ans: SELECT ROUND(AVG(monthlycharges)::numeric,2) FROM customers WHERE internetservice = 'DSL';

=== LEVEL 2: GROUP BY & AGGREGATION (11-20) ===

Q11. EN: Count customers by contract type.
     HI: Contract type ke hisaab se customer count?
Ans: SELECT contract, COUNT(*) FROM customers GROUP BY contract;

Q12. EN: Average tenure by gender.
     HI: Gender wise average tenure?
Ans: SELECT gender, ROUND(AVG(tenure)::numeric,1) FROM customers GROUP BY gender;

Q13. EN: Churn count by internet service type.
     HI: InternetService wise churn count?
Ans: SELECT internetservice, churn, COUNT(*) FROM customers GROUP BY internetservice, churn;

Q14. EN: Average monthly charges by payment method.
     HI: PaymentMethod wise average monthly charges?
Ans: SELECT paymentmethod, ROUND(AVG(monthlycharges)::numeric,2) FROM customers GROUP BY paymentmethod;

Q15. EN: Churn percentage by Senior Citizen status.
     HI: SeniorCitizen wise churn percentage?
Ans: SELECT seniorcitizen, churn, COUNT(*)*100.0/SUM(COUNT(*)) OVER(PARTITION BY seniorcitizen) FROM customers GROUP BY seniorcitizen, churn;

Q16. EN: What are the max and min tenure?
     HI: Maximum aur minimum tenure kya hai?
Ans: SELECT MAX(tenure), MIN(tenure) FROM customers;

Q17. EN: Average total charges by contract type.
     HI: Contract wise average total charges?
Ans: SELECT contract, ROUND(AVG(totalcharges)::numeric,2) FROM customers GROUP BY contract;

Q18. EN: Average monthly charges for churned customers.
     HI: Churn='Yes' wale customers ka average monthly charges?
Ans: SELECT ROUND(AVG(monthlycharges)::numeric,2) FROM customers WHERE churn = 'Yes';

Q19. EN: Churn rate for each gender.
     HI: Har gender ke liye churn rate?
Ans: SELECT gender, ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),1) as churn_rate FROM customers GROUP BY gender;

Q20. EN: Contract types where churn rate exceeds 50%.
     HI: Contract type jahan churn rate 50% se zyada hai?
Ans: SELECT contract, ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),1) as rate FROM customers GROUP BY contract HAVING SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*) > 50;

=== LEVEL 3: JOINS (21-27) ===

Q21. EN: Join orders with customers to show gender and tenure.
     HI: Orders table ke saath customers ka data dikhao (JOIN).
Ans: SELECT o.*, c.gender, c.tenure FROM orders o JOIN customers c ON o.customer_id = c.customerid;

Q22. EN: Join orders with products to show product names.
     HI: Products table ke saath orders JOIN karo.
Ans: SELECT o.*, p.product_name, p.price FROM orders o JOIN products p ON o.product_id = p.product_id;

Q23. EN: Join all 3 tables: customers + orders + products.
     HI: Teen table JOIN: customers + orders + products.
Ans: SELECT c.customerid, c.gender, o.order_id, p.product_name, o.total FROM customers c JOIN orders o ON c.customerid = o.customer_id JOIN products p ON o.product_id = p.product_id;

Q24. EN: Products that were never ordered (LEFT JOIN).
     HI: Products table mein se wo products jo kabhi order nahi hue (LEFT JOIN).
Ans: SELECT p.* FROM products p LEFT JOIN orders o ON p.product_id = o.product_id WHERE o.order_id IS NULL;

Q25. EN: Total order value per customer.
     HI: Customer wise total order value?
Ans: SELECT c.customerid, c.gender, ROUND(SUM(o.total)::numeric,2) as total_spent FROM customers c JOIN orders o ON c.customerid = o.customer_id GROUP BY c.customerid, c.gender ORDER BY total_spent DESC;

Q26. EN: Total quantity sold per product.
     HI: Product wise total quantity sold?
Ans: SELECT p.product_name, SUM(o.quantity) FROM products p JOIN orders o ON p.product_id = o.product_id GROUP BY p.product_name ORDER BY SUM(o.quantity) DESC;

Q27. EN: Top 5 customers by total spending.
     HI: Top 5 customers by spending?
Ans: SELECT c.customerid, c.gender, ROUND(SUM(o.total)::numeric,2) as spent FROM customers c JOIN orders o ON c.customerid = o.customer_id GROUP BY c.customerid, c.gender ORDER BY spent DESC LIMIT 5;

=== LEVEL 4: SUBQUERIES & ADVANCED (28-34) ===

Q28. EN: Customers with monthly charges above average.
     HI: Average se zyada monthly charges wale customers?
Ans: SELECT * FROM customers WHERE monthlycharges > (SELECT AVG(monthlycharges) FROM customers);

Q29. EN: Show customerid, gender, monthlycharges for above average customers.
     HI: Average se zyada monthly charges wale customers dikhao (customerid, gender, monthlycharges).
Ans: SELECT customerid, gender, monthlycharges FROM customers WHERE monthlycharges > (SELECT AVG(monthlycharges) FROM customers);

Q30. EN: Products with price above average price.
     HI: Products jinka price average price se zyada hai?
Ans: SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);

Q31. EN: Customers who never placed an order.
     HI: Customers jinhone koi order nahi kiya?
Ans: SELECT * FROM customers WHERE customerid NOT IN (SELECT DISTINCT customer_id FROM orders);

Q32. EN: Customers with monthly charges between 50-100 and churn=Yes.
     HI: Monthly charges 50-100 ke beech aur churn='Yes' wale?
Ans: SELECT * FROM customers WHERE monthlycharges BETWEEN 50 AND 100 AND churn = 'Yes';

Q33. EN: Rank customers by tenure (DENSE_RANK) who churned.
     HI: Tenure ke hisaab se rank (dense_rank) churn='Yes' wale customers ki?
Ans: SELECT customerid, tenure, DENSE_RANK() OVER(ORDER BY tenure DESC) as rank FROM customers WHERE churn = 'Yes' LIMIT 10;

Q34. EN: Order count by month.
     HI: Har month ke hisaab se orders count?
Ans: SELECT EXTRACT(MONTH FROM order_date::date) as month, COUNT(*) FROM orders GROUP BY month ORDER BY month;

=== ALL 21 COLUMNS COVERED (Questions 35-50) ===

-- COLUMN: partner --
Q35. EN: Churn count by partner status.
     HI: Partner='Yes' wale customers ka churn rate?
Ans: SELECT partner, churn, COUNT(*) FROM customers GROUP BY partner, churn;

-- COLUMN: dependents --
Q36. EN: How many customers with dependents churned?
     HI: Dependents='Yes' wale customer kitne churn kiye?
Ans: SELECT COUNT(*) FROM customers WHERE dependents = 'Yes' AND churn = 'Yes';

-- COLUMN: phoneservice & multiplelines --
Q37. EN: Average tenure of customers with phone and multiple lines.
     HI: PhoneService='Yes' aur MultipleLines='Yes' wale customers ka average tenure?
Ans: SELECT ROUND(AVG(tenure)::numeric,1) FROM customers WHERE phoneservice = 'Yes' AND multiplelines = 'Yes';

-- COLUMN: onlinesecurity --
Q38. EN: Customers with no online security who churned.
     HI: OnlineSecurity='No' wale kitne customers ne churn kiya?
Ans: SELECT COUNT(*) FROM customers WHERE onlinesecurity = 'No' AND churn = 'Yes';

-- COLUMN: onlinebackup --
Q39. EN: Churn percentage for customers with online backup.
     HI: OnlineBackup='Yes' wale customers ka churn percentage?
Ans: SELECT ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),1) FROM customers WHERE onlinebackup = 'Yes';

-- COLUMN: deviceprotection --
Q40. EN: Count customers with no internet service for device protection.
     HI: DeviceProtection='No internet service' wale customers kitne?
Ans: SELECT COUNT(*) FROM customers WHERE deviceprotection = 'No internet service';

-- COLUMN: techsupport --
Q41. EN: Customers with tech support who still churned.
     HI: TechSupport='Yes' aur churn='Yes' wale kitne?
Ans: SELECT COUNT(*) FROM customers WHERE techsupport = 'Yes' AND churn = 'Yes';

-- COLUMN: streamingtv --
Q42. EN: Average total charges for customers with streaming TV.
     HI: StreamingTV='Yes' wale customers ka average total charges?
Ans: SELECT ROUND(AVG(totalcharges)::numeric,2) FROM customers WHERE streamingtv = 'Yes';

-- COLUMN: streamingmovies --
Q43. EN: Do customers with streaming movies churn more?
     HI: StreamingMovies='Yes' wale kya zyada churn karte hain?
Ans: SELECT streamingmovies, churn, COUNT(*) FROM customers GROUP BY streamingmovies, churn;

-- COLUMN: paperlessbilling --
Q44. EN: Churn vs non-churn for paperless billing customers.
     HI: PaperlessBilling='Yes' wale customers ka churn vs non-churn?
Ans: SELECT paperlessbilling, churn, COUNT(*) FROM customers GROUP BY paperlessbilling, churn;

-- COLUMN: totalcharges --
Q45. EN: Customers with total charges above 5000.
     HI: Total charges 5000 se zyada wale customers?
Ans: SELECT customerid, totalcharges FROM customers WHERE totalcharges > 5000;

-- COLUMN: customerid --
Q46. EN: How many unique customers are there?
     HI: Kitne unique customers hain?
Ans: SELECT COUNT(DISTINCT customerid) FROM customers;

-- COLUMN: monthlycharges + tenure --
Q47. EN: Loyal customers with high charges and long tenure.
     HI: Monthly charges 100+ aur tenure 60+ wale loyal customers?
Ans: SELECT COUNT(*) FROM customers WHERE monthlycharges >= 100 AND tenure >= 60;

-- COLUMN: phoneservice --
Q48. EN: Relationship between phone service and multiple lines.
     HI: Phone service nahi hai to MultipleLines kya hai?
Ans: SELECT phoneservice, multiplelines, COUNT(*) FROM customers GROUP BY phoneservice, multiplelines;

-- COLUMN: all services combined --
Q49. EN: Customers with all security features active.
     HI: Kitne customers ke paas OnlineSecurity + TechSupport + DeviceProtection sab hai?
Ans: SELECT COUNT(*) FROM customers WHERE onlinesecurity = 'Yes' AND techsupport = 'Yes' AND deviceprotection = 'Yes';

-- COLUMN: churn + multiple columns --
Q50. EN: Top 5 most common churner profiles.
     HI: Sabse zyada churn karne wale customer ka profile?
Ans: SELECT gender, seniorcitizen, contract, paymentmethod, COUNT(*) as cnt FROM customers WHERE churn = 'Yes' GROUP BY gender, seniorcitizen, contract, paymentmethod ORDER BY cnt DESC LIMIT 5;
