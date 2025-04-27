create view today_orders as
select *
from sales_order
where cast(s_order_date as date) = cast(getdate() as date);
go
select * from today_orders
