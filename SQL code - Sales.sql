select distinct products.productLine as myProduct, (
	select sum(quantityOrdered)
    from 
		products 
		inner join orderdetails on products.productCode=orderdetails.productCode 
        inner join orders ON orderdetails.orderNumber=orders.orderNumber 
	where 
		productLine=myProduct 
		and DATE_FORMAT(orderDate, "%M %Y")="JANUARY 2020") as "Janvier 2020",(
	select sum(quantityOrdered)
    from 
		products 
		inner join orderdetails on products.productCode=orderdetails.productCode 
        inner join orders ON orderdetails.orderNumber=orders.orderNumber 
	where 
		productLine=myProduct 
		and DATE_FORMAT(orderDate, "%M %Y")="JANUARY 2021") as "Janvier 2021"
from products;

/* x12 */

select distinct products.productLine as myProduct, (
	select sum(quantityOrdered)
    from 
		products 
		inner join orderdetails on products.productCode=orderdetails.productCode 
        inner join orders ON orderdetails.orderNumber=orders.orderNumber 
	where 
		productLine=myProduct 
		and DATE_FORMAT(orderDate, "%M %Y")="FEBRUARY 2020") as "Février 2020",(
	select sum(quantityOrdered)
    from 
		products 
		inner join orderdetails on products.productCode=orderdetails.productCode 
        inner join orders ON orderdetails.orderNumber=orders.orderNumber 
	where 
		productLine=myProduct 
		and DATE_FORMAT(orderDate, "%M %Y")="FEBRUARY 2021") as "Février 2021"
from products;
