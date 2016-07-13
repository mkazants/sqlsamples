/* Select the order id,shipped date, and fright cost for the order with the highest freight cost shipped before 1997 (rounded to the nearest cent) */
select orderid,shippeddate,freight
from orders
where freight = (select max(freight) from orders where shippeddate<'1997-01-01')