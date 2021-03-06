SELECT ANY_VALUE(p.category) AS '카테고리' ,od.order_id, COUNT(od.order_id) AS '주문 수', ANY_VALUE(p.product_name) AS '상품명'
FROM orders as o
right join order_details as od ON o.id = od.order_id 
right join products as p ON od.product_id = p.id
where p.category Like 'Beverages' or p.category Like 'sauces'
or p.category Like 'Dried Fruit & Nuts'or p.category Like 'Baked Goods & Mixes'
or p.category Like 'Pasta' and YEAR(o.order_date) = 2006
GROUP BY od.order_id;

