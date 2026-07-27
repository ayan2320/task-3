SELECT customer_id FROM customers WHERE customer_id IN(
SELECT customer_id FROM orders WHERE order_status='delivered');