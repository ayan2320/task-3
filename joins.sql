SELECT c.customers_id , c.customer_city, o.order_id, o.order_status FROM customers c INNER JOIN orders o on c.customer_id=o.customer_id;
select c.customer_id, customer_city, o.order_id FROM customers c LEFT JOIN orders o ON c.customer_id=o.customer_id;
SELECT c.customer_id, o.order_id FROM customers c RIGHT join orders o on c.customer_id=o.customer_id;
SELECT o.order_id, c.customer_city, p.product_category_name, oi.price, s.seller_city FROM orders o JOIN customers c ON o.customer_id=c.customer_id JOIN order_items oi ON o.order_id=oi.orderid JOIN products p ON oi.product_id=p.product_id JOIN sellers s ON oi.seller_id=s.seller_id;
