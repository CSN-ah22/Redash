SELECT o.customer_id, c.first_name, c.last_name , COUNT(p.category) AS `카테고리수`, 
SUM(od.quantity * od.unit_price) AS `총 주문 금액`
FROM orders as o
right join order_details as od ON o.id = od.order_id 
right join products as p ON od.product_id = p.id
right join customers as c ON o.customer_id = c.id
where (YEAR(o.order_date), QUARTER(o.order_date)) = (2006,1)
group by c.id;
