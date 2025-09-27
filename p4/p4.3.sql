SELECT
    o.id AS order_id,
    o.date AS order_date,
    c.name AS customer_name,
    e.first_name,
    e.last_name,
    p.name AS product_name,
    od.quantity
FROM order_details od
         INNER JOIN orders o ON od.order_id = o.id
         INNER JOIN customers c ON o.customer_id = c.id
         INNER JOIN employees e ON o.employee_id = e.employee_id
         INNER JOIN shippers s ON o.shipper_id = s.id
         INNER JOIN products p ON od.product_id = p.id
         INNER JOIN categories cat ON p.category_id = cat.id
         INNER JOIN suppliers sup ON p.supplier_id = sup.id
WHERE e.employee_id > 3 AND e.employee_id <= 10;
