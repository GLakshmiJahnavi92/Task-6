DROP DATABASE IF EXISTS sales_analysis;
CREATE DATABASE sales_analysis;
USE sales_analysis;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 250.00, 101),
(2, '2024-01-20', 320.50, 102),
(3, '2024-02-05', 150.00, 103),
(4, '2024-02-10', 200.00, 101),
(5, '2024-03-12', 500.00, 104),
(6, '2024-03-18', 100.00, 105),
(7, '2024-04-01', 450.00, 106),
(8, '2024-04-21', 130.75, 107),
(9, '2024-05-05', 300.00, 108),
(10, '2024-05-22', 280.50, 102);

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
GROUP BY 
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY 
    total_revenue DESC;
