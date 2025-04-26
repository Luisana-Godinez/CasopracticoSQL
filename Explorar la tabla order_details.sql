-- ¿Cuántos pedidos únicos se realizaron en total?
-- Total de pedidos únicos 5370
SELECT COUNT(DISTINCT order_id) AS total_pedidos 
FROM order_details;


--¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?
--
SELECT order_id, COUNT(*) AS cantidad_articulos 
FROM order_details
GROUP BY order_id
ORDER BY cantidad_articulos DESC
LIMIT 5;

-- ¿Cuándo serealizó el primer pedido y el último pedido?
-- Primer pedido: 2023-01-01
-- último pedido: 2023-03-31
SELECT MIN(order_date) AS primer_pedido, MAX(order_date) AS ultimo_pedido 
FROM order_details;

-- ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?
-- 308 pedido
SELECT COUNT(DISTINCT order_id) AS pedidos_en_rango 
FROM order_details 
WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';