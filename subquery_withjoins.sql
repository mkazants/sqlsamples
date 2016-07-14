/* Select the order id and total price for the order with the highest freight cost shipped before 1997 (rounded to the nearest cent) */
select orders.orderid,round(sum(order_details.UnitPrice*order_details.quantity*(1-order_details.Discount)),2)
from orders
inner join order_details
on orders.orderid=order_details.orderid
where orders.freight = (select max(orders.freight) from orders where orders.shippeddate<'1997-01-01')