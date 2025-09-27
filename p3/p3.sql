SELECT
    o.id AS order_id,
    o.date AS order_date,
    c.name AS customer_name,
    e.first_name AS employee_firstname,
    e.last_name AS employee_lastname,
    s.name AS shipper_name,
    p.name AS product_name,
    cat.name AS category_name,
    sup.name AS supplier_name,
    od.quantity,
    p.price,
    (od.quantity * p.price) AS total_price
FROM order_details od
         INNER JOIN orders o ON od.order_id = o.id
         INNER JOIN customers c ON o.customer_id = c.id
         INNER JOIN employees e ON o.employee_id = e.employee_id
         INNER JOIN shippers s ON o.shipper_id = s.id
         INNER JOIN products p ON od.product_id = p.id
         INNER JOIN categories cat ON p.category_id = cat.id
         INNER JOIN suppliers sup ON p.supplier_id = sup.id;
