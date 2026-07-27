SELECT customer_id, customer_city from customers;
select * from customers where customer_city='BANGALORE';
SELECT * FROM orders WHERE order_status='delivered';
SELECT * FROM order_items WHERE price>2000;
SELECT * FROM order_items ORDER BY price desc;
SELECT DISTINCT customer_state FROM customers;
SELECT SUM(price) AS revenue FROM order_items;
SELECT AVG(price) AS revenue FROM order_items; #similarly we can use count(*),max,min,etc.
SELECT order_status,count(*) AS total FROM orders GROUP BY order_status;
SELECT seller_id, SUM(price) AS revenue FROM order_items GROUP BY seller_id HAVING SUM(price)>5000;#having is used after grouping hence its diffferent from where


