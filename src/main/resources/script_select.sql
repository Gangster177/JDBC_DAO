select product_name
from homework.ORDERS o
inner join homework.CUSTOMERS c on o.customer_id = c.id
where lower(c.name) = lower(:name);