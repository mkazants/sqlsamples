select orderid,shippeddate,freight
from orders
where freight = (select max(freight) from orders where shippeddate<'1997-01-01')