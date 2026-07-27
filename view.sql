CREATE VIEW customer_orders AS
SELECT c.customer_id, c.customer_city, o.order_id, o.order_status
FROM customers c
join orders o on c.customer_id=o.customer_id;

select * from customer_orders;