create view salesman_target_view as
select *
from salesman_master
where tgt_to_get >= 200;

select * from salesman_target_view