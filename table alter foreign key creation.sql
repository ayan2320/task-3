ALTER TABLE order_reviews
ADD CONSTRAINT fk_review_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);
ALTER TABLE order_payments
ADD CONSTRAINT fk_payment_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);
ALTER TABLE order_items
ADD CONSTRAINT fk_orderitems_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id);
ALTER TABLE order_items
ADD CONSTRAINT fk_orderitems_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);
ALTER TABLE order_items
ADD CONSTRAINT fk_orderitems_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);
ALTER TABLE orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);