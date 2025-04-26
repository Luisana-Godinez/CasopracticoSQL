SELECT *
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id;

--Platos mas populares
SELECT mi.item_name, COUNT(*) AS veces_ordenado
FROM order_details od
JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name
ORDER BY veces_ordenado DESC
LIMIT 5;


-- Platos menos populares
SELECT mi.item_name, COUNT(*) AS veces_ordenado
FROM order_details od
JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name
ORDER BY veces_ordenado ASC
LIMIT 5;

-- Categorías más vendidas
SELECT mi.category, COUNT(*) AS total_vendidos
FROM order_details od
JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY mi.category
ORDER BY total_vendidos DESC;


--Ingresos generados por cada producto
SELECT mi.item_name, ROUND(SUM(mi.price), 2) AS total_ingresos
FROM order_details od
JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name
ORDER BY total_ingresos DESC
LIMIT 5;

--Ingresos por categoría
SELECT mi.category, ROUND(SUM(mi.price), 2) AS ingresos_categoria
FROM order_details od
JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY mi.category
ORDER BY ingresos_categoria DESC;

