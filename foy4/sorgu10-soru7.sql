create table customer (
    cust_id int primary key,
    cust_name varchar(50),
    cust_city varchar(50),
    e_mail varchar(50) unique
);
go
insert into customer (cust_id, cust_name, cust_city, e_mail)
values
(1, 'John Doe', 'Bombay', 'john@example.com'),
(2, 'Jane Smith', 'Delhi', 'jane@example.com'),
(3, 'Sam Wilson', 'Bombay', 'sam@example.com'),
(4, 'Lily Adams', 'Delhi', 'lily@example.com'),
(5, 'Harry Potter', 'Bombay', 'harry@example.com'),
(6, 'Hermione Granger', 'London', 'hermione@example.com');
go
create index idx_cust_city on customer(cust_city);
go
select * from customer where cust_city = 'Bombay';
go
select count(*) from customer where cust_city = 'Delhi';
