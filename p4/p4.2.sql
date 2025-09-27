SELECT COUNT(*) AS total_rows
FROM order_details od
         INNER JOIN orders o ON od.order_id = o.id
         INNER JOIN customers c ON o.customer_id = c.id
         INNER JOIN employees e ON o.employee_id = e.employee_id
         INNER JOIN shippers s ON o.shipper_id = s.id
         INNER JOIN products p ON od.product_id = p.id
         INNER JOIN categories cat ON p.category_id = cat.id
         LEFT JOIN suppliers sup ON p.supplier_id = sup.id;

-- Результат: кількість рядків збільшиться або залишиться такою ж,
-- тому що тепер навіть товари без постачальника потрапляють у вибірку.
-- З RIGHT JOIN схожа історія, тільки зміщується «головна» таблиця.
