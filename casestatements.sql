/* Categorize each order into Large, Medium, or Small based on the order total*/
select orders.orderid,
case when round(sum((order_details.UnitPrice * order_details.Quantity*(1-order_details.discount))),2)>1000 then 'Large Order' 
when round(sum((order_details.UnitPrice * order_details.Quantity*(1-order_details.discount))),2) between 300 and 1000 then 'Medium Order'
else 'Small Order' end
as Ordersize
from orders
inner join order_details
on orders.orderid = order_details.orderid
group by orders.orderid


