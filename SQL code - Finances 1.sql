/* Finances 1*/

SELECT country, SUM(quantityOrdered*priceEach) AS turnover
FROM customers
JOIN orders ON customers.customerNumber=orders.customerNumber
JOIN orderdetails ON orders.orderNumber=orderdetails.orderNumber
WHERE (MONTH(orderDate) >= MONTH(orderDate)-2) AND YEAR(orderDate)=YEAR(NOW()) AND status = ("Shipped" OR "Resolved")
GROUP BY country
ORDER BY turnover DESC;

/* Finances 2*/

