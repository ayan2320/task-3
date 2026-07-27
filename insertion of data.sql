INSERT INTO geolocation
(geolocation_zip_code_prefix, geolocation_lat,
geolocation_lng, geolocation_city, geolocation_state)
VALUES
(560001,12.9716,77.5946,'Bangalore','KA'),
(110001,28.6139,77.2090,'Delhi','DL'),
(700001,22.5726,88.3639,'Kolkata','WB'),
(400001,19.0760,72.8777,'Mumbai','MH'),
(600001,13.0827,80.2707,'Chennai','TN'),
(500001,17.3850,78.4867,'Hyderabad','TS'),
(302001,26.9124,75.7873,'Jaipur','RJ'),
(226001,26.8467,80.9462,'Lucknow','UP');
INSERT INTO order_reviews
(review_id, order_id, review_score,
review_comment_title, review_comment_message,
review_creation_date, review_answer_timestamp)
VALUES
('REV001','ORD001',5,'Excellent','Very satisfied with the product.','2026-01-05 10:00:00','2026-01-05 11:00:00'),
('REV002','ORD002',4,'Good','Fast shipping.','2026-01-08 09:00:00','2026-01-08 10:00:00'),
('REV003','ORD003',5,'Amazing','Worth the price.','2026-01-09 08:00:00','2026-01-09 09:00:00'),
('REV004','ORD004',3,'Average','Delivery delayed.','2026-01-13 08:00:00','2026-01-13 09:00:00'),
('REV005','ORD005',5,'Excellent','Highly recommended.','2026-01-12 09:00:00','2026-01-12 10:00:00'),
('REV006','ORD006',4,'Nice','Quality is good.','2026-01-14 10:00:00','2026-01-14 11:00:00'),
('REV007','ORD007',2,'Poor','Order was cancelled.','2026-01-18 09:00:00','2026-01-18 10:00:00'),
('REV008','ORD008',5,'Excellent','Great experience.','2026-01-19 08:00:00','2026-01-19 09:00:00');
INSERT INTO order_payments
(order_id, payment_sequential, payment_type,
payment_installments, payment_value)
VALUES
('ORD001',1,'credit_card',6,25500.00),
('ORD002',1,'upi',1,15700.00),
('ORD003',1,'debit_card',1,900.00),
('ORD004',1,'credit_card',3,1280.00),
('ORD005',1,'net_banking',1,3700.00),
('ORD006',1,'credit_card',2,2350.00),
('ORD007',1,'voucher',1,710.00),
('ORD008',1,'upi',1,1920.00);
INSERT INTO order_items
(order_id, order_item_id, product_id, seller_id,
shipping_limit_date, price, freight_value)
VALUES
('ORD001',1,'PROD001','SELL001','2026-01-02 18:00:00',25000.00,500.00),
('ORD002',1,'PROD002','SELL002','2026-01-04 18:00:00',15000.00,700.00),
('ORD003',1,'PROD003','SELL003','2026-01-06 18:00:00',800.00,100.00),
('ORD004',1,'PROD004','SELL004','2026-01-08 18:00:00',1200.00,80.00),
('ORD005',1,'PROD005','SELL005','2026-01-09 18:00:00',3500.00,200.00),
('ORD006',1,'PROD006','SELL001','2026-01-11 18:00:00',2200.00,150.00),
('ORD007',1,'PROD007','SELL002','2026-01-13 18:00:00',650.00,60.00),
('ORD008',1,'PROD008','SELL003','2026-01-16 18:00:00',1800.00,120.00);
INSERT INTO orders
(order_id, customer_id, order_status,
order_purchase_timestamp,
order_approved_at,
order_delivered_carrier_date,
order_delivered_customer_date,
order_estimated_delivery_date)
VALUES
('ORD001','CUST001','delivered','2026-01-01 10:00:00','2026-01-01 11:00:00','2026-01-02 09:00:00','2026-01-04 15:00:00','2026-01-05 18:00:00'),
('ORD002','CUST002','shipped','2026-01-03 09:00:00','2026-01-03 10:00:00','2026-01-04 08:00:00',NULL,'2026-01-08 18:00:00'),
('ORD003','CUST003','delivered','2026-01-05 13:00:00','2026-01-05 14:00:00','2026-01-06 09:00:00','2026-01-08 12:00:00','2026-01-09 18:00:00'),
('ORD004','CUST004','processing','2026-01-07 11:00:00','2026-01-07 12:00:00',NULL,NULL,'2026-01-12 18:00:00'),
('ORD005','CUST005','delivered','2026-01-08 08:00:00','2026-01-08 09:00:00','2026-01-09 10:00:00','2026-01-11 17:00:00','2026-01-12 18:00:00'),
('ORD006','CUST006','delivered','2026-01-10 10:00:00','2026-01-10 11:00:00','2026-01-11 09:00:00','2026-01-13 14:00:00','2026-01-14 18:00:00'),
('ORD007','CUST007','cancelled','2026-01-12 09:00:00',NULL,NULL,NULL,'2026-01-17 18:00:00'),
('ORD008','CUST008','delivered','2026-01-15 10:00:00','2026-01-15 11:00:00','2026-01-16 09:00:00','2026-01-18 16:00:00','2026-01-19 18:00:00');
INSERT INTO sellers
(seller_id, seller_zip_code_prefix, seller_city, seller_state)
VALUES
('SELL001',560001,'Bangalore','KA'),
('SELL002',400001,'Mumbai','MH'),
('SELL003',700001,'Kolkata','WB'),
('SELL004',110001,'Delhi','DL'),
('SELL005',500001,'Hyderabad','TS');
INSERT INTO products
(product_id, product_category_name, product_name_lenght,
product_description_lenght, product_photos_qty,
product_weight_g, product_length_cm,
product_height_cm, product_width_cm)
VALUES
('PROD001','electronics',18,120,3,450,20,10,15),
('PROD002','furniture',15,180,5,12000,100,80,60),
('PROD003','books',10,90,2,500,22,3,15),
('PROD004','fashion',14,100,4,300,30,2,20),
('PROD005','sports',12,140,3,900,40,12,20),
('PROD006','kitchen',16,150,4,1200,35,18,25),
('PROD007','beauty',13,110,2,250,10,8,8),
('PROD008','toys',11,100,3,700,25,15,18);
INSERT INTO customers
(customer_id, customer_unique_id, customer_zip_code_prefix, customer_city, customer_state)
VALUES
('CUST001','U001',560001,'Bangalore','KA'),
('CUST002','U002',110001,'Delhi','DL'),
('CUST003','U003',700001,'Kolkata','WB'),
('CUST004','U004',400001,'Mumbai','MH'),
('CUST005','U005',600001,'Chennai','TN'),
('CUST006','U006',500001,'Hyderabad','TS'),
('CUST007','U007',302001,'Jaipur','RJ'),
('CUST008','U008',226001,'Lucknow','UP');