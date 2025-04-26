-- b) Explorar la tabla “menu_items” para conocer los productos del menú. 
-- Número de artículos en el menú:32
SELECT COUNT(*) AS total_articulos FROM menu_items;

-- ¿Cuál es el artículo menos caro y el más caro en el menú?
--menos caro: Edamame 5.00
-- más caro:Shrimp Scampi 19.95
SELECT item_name, price 
FROM menu_items
ORDER BY price ASC
LIMIT 1;

SELECT item_name, price 
FROM menu_items
ORDER BY price DESC
LIMIT 1;

--¿Cuántos platos americanos hay en el menú? 
--Total de platos 6
SELECT COUNT(*) AS total_americanos 
FROM menu_items 
WHERE category ILIKE '%american%';

-- ¿Cuál es el precio promedio de los platos? 
-- Precio promedio 13.29
SELECT ROUND(AVG(price), 2) AS precio_promedio 
FROM menu_items;

--
