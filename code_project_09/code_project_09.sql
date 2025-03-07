
SELECT 
orders_table.order_id, 
orders_table.order_date, 
orders_table.user_id, 
target_table.category AS user_category, 
target_table.city AS user_city, 
target_table.`monthly revenue target` AS user_montly_revenue_target, 
orders_table.product_id, items_table.category AS product_category, 
orders_table.revenue

FROM `project-test-3003.dataset_test.orders` orders_table

LEFT JOIN `project-test-3003.dataset_test.items` items_table

ON orders_table.product_id = items_table.item_id

LEFT JOIN `project-test-3003.dataset_test.targets` target_table

ON orders_table.user_id = target_table.user_id