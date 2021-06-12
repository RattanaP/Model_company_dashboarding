/* Human Ressources, 30 derniers jours */

SELECT  firstName, lastName, SUM(quantityOrdered*priceEach) as turnover
FROM employees as E
JOIN customers as C
ON E.employeeNumber=C.salesRepEmployeeNumber
JOIN orders as O
ON C.customerNumber=O.customerNumber
JOIN orderdetails as OD
ON O.orderNumber=OD.orderNumber
WHERE DAY(orderDate) BETWEEN (DAY(orderDate)-30) AND DAY(NOW()) AND YEAR(orderDate)=YEAR(NOW()) AND status = "Shipped" OR "Resolved"
GROUP BY OD.ordernumber
ORDER BY turnover DESC LIMIT 2;