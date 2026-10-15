select users.name, count(orders.id) as order_count, sum(orders.amount) as total_spent
from users
join orders on orders.user_id = users.id
where orders.status = 'completed'
group by users.id, users.name
order by total_spent desc;
select products.category, count(orders.id) as order_count
from products
join orders on orders.product_id = products.id
group by products.category
having count(orders.id) > 1;
