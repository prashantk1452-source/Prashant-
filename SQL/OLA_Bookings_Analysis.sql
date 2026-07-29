-- ===================================================
-- OLA BOOKINGS ANALYSIS - SQL QUERIES
-- Database: OLA (PostgreSQL)
-- Tables: bookings (20,407 rows), bookings_100k (103,024 rows)
-- ===================================================

-- 1. Total bookings count
SELECT COUNT(*) AS total_bookings FROM bookings;

-- 2. Booking status breakdown
SELECT booking_status, COUNT(*) AS count,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM bookings
GROUP BY booking_status
ORDER BY count DESC;

-- 3. Top 5 vehicle types by booking count
SELECT vehicle_type, COUNT(*) AS total_bookings,
       ROUND(AVG(booking_value), 0) AS avg_booking_value
FROM bookings
GROUP BY vehicle_type
ORDER BY total_bookings DESC
LIMIT 5;

-- 4. Payment method distribution
SELECT payment_method, COUNT(*) AS count
FROM bookings
WHERE payment_method IS NOT NULL AND payment_method != ''
GROUP BY payment_method
ORDER BY count DESC;

-- 5. Average customer rating by vehicle type
SELECT vehicle_type,
       ROUND(AVG(customer_rating)::numeric, 2) AS avg_customer_rating,
       COUNT(*) AS total_rides
FROM bookings
WHERE customer_rating IS NOT NULL
GROUP BY vehicle_type
ORDER BY avg_customer_rating DESC;

-- 6. Top 10 pickup locations
SELECT pickup_location, COUNT(*) AS booking_count
FROM bookings
GROUP BY pickup_location
ORDER BY booking_count DESC
LIMIT 10;

-- 7. Revenue analysis by vehicle type
SELECT vehicle_type,
       COUNT(*) AS total_bookings,
       SUM(booking_value) AS total_revenue,
       ROUND(AVG(booking_value), 0) AS avg_booking_value
FROM bookings
WHERE booking_status = 'Success'
GROUP BY vehicle_type
ORDER BY total_revenue DESC;

-- 8. Cancellation analysis
SELECT
    COUNT(*) FILTER (WHERE canceled_rides_by_customer IS NOT NULL AND canceled_rides_by_customer != '') AS canceled_by_customer,
    COUNT(*) FILTER (WHERE canceled_rides_by_driver IS NOT NULL AND canceled_rides_by_driver != '') AS canceled_by_driver,
    ROUND(COUNT(*) FILTER (WHERE canceled_rides_by_customer IS NOT NULL AND canceled_rides_by_customer != '') * 100.0 / COUNT(*), 2) AS customer_cancel_pct,
    ROUND(COUNT(*) FILTER (WHERE canceled_rides_by_driver IS NOT NULL AND canceled_rides_by_driver != '') * 100.0 / COUNT(*), 2) AS driver_cancel_pct
FROM bookings;

-- 9. Common cancellation reasons (by customer)
SELECT canceled_rides_by_customer AS reason, COUNT(*) AS count
FROM bookings
WHERE canceled_rides_by_customer IS NOT NULL AND canceled_rides_by_customer != ''
GROUP BY canceled_rides_by_customer
ORDER BY count DESC;

-- 10. Ride distance analysis
SELECT vehicle_type,
       ROUND(AVG(ride_distance), 2) AS avg_distance,
       MAX(ride_distance) AS max_distance,
       MIN(ride_distance) AS min_distance
FROM bookings
WHERE ride_distance > 0
GROUP BY vehicle_type
ORDER BY avg_distance DESC;

-- 11. Peak booking hours
SELECT EXTRACT(HOUR FROM time::time) AS hour,
       COUNT(*) AS bookings_count
FROM bookings_100k
GROUP BY hour
ORDER BY bookings_count DESC;

-- 12. Daily booking trend
SELECT DATE("Date") AS booking_date,
       COUNT(*) AS total_bookings,
       SUM("Booking_Value") AS total_revenue
FROM bookings_100k
GROUP BY booking_date
ORDER BY booking_date;

-- 13. Incomplete rides analysis
SELECT incomplete_rides_reason AS reason,
       COUNT(*) AS count
FROM bookings
WHERE incomplete_rides = 'Yes'
  AND incomplete_rides_reason IS NOT NULL
  AND incomplete_rides_reason != ''
GROUP BY incomplete_rides_reason
ORDER BY count DESC;

-- 14. Top 5 customers by booking value
SELECT customer_id,
       COUNT(*) AS total_bookings,
       SUM(booking_value) AS total_value
FROM bookings
GROUP BY customer_id
ORDER BY total_value DESC
LIMIT 5;

-- 15. Average TAT (Turnaround Time) by vehicle type
SELECT vehicle_type,
       ROUND(AVG(v_tat), 2) AS avg_vehicle_tat,
       ROUND(AVG(c_tat), 2) AS avg_customer_tat
FROM bookings
WHERE v_tat IS NOT NULL AND c_tat IS NOT NULL
GROUP BY vehicle_type
ORDER BY avg_vehicle_tat DESC;
