select 
    c."name" as client_name, 
    p."description" as product_name
from sales_order so
join sales_order_details sod on so.s_order_no = sod.s_order_no
join client_master c on so.client_no = c.client_no
join product_master p on sod.product_no = p.product_no
where datediff(day, so.s_order_date, so.dely_date) > 10;

select 
    c."name" as client_name, 
    p."description" as product_name
from sales_order so
join sales_order_details sod on so.s_order_no = sod.s_order_no
join client_master c on so.client_no = c.client_no
join product_master p on sod.product_no = p.product_no
where datediff(day, so.s_order_date, getdate()) > 10;
