-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    ROUND(AVG(total_orders), 0) as avg_pizzas_orderd_per_day
FROM
    (SELECT 
        orders.order_date,
            SUM(order_details.quantity) AS total_orders
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY order_date) AS order_quantity; 