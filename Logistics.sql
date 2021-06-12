/* Logistics */

SELECT productName, quantityInStock, SUM(priceEach*quantityOrdered) as Total_Vendu, SUM(quantityOrdered) as Number_sold
FROM products as P
JOIN orderDetails as OD
ON P.productCode=OD.productCode
JOIN orders as O
ON OD.orderNumber=O.orderNumber
#WHERE status = ("Shipped" OR "Resolved")
GROUP BY P.productCode
ORDER BY Total_vendu DESC LIMIT 5;