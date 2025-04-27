insert into client_master (client_no, "name", city, pincode, "state", bal_duq)
values 
('0001', 'Ivan', 'Bombay', 400054, 'Maharashtra', 15000),
('0002', 'Vandana', 'Madras', 780001, 'Tamilnadu', 0),
('0003', 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000),
('0004', 'Basu', 'Bombay', 400056, 'Maharashtra', 0),
('0005', 'Ravi', 'Delhi', 100001, null, 2000),
('0006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 0);

insert into product_master (product_no, "description", profit_percent, unit_measure, qty_on_hand, reorder_lvl, cost_price, sell_price)
values
('P00001', '1.44floppies', 5, 'piece', 100, 20, 500, 525),
('P03453', 'Monitors', 6, 'piece', 10, 3, 11200, 12000),
('P06734', 'Mouse', 5, 'piece', 20, 5, 500, 1050),
('P07865', '1.22 floppies', 5, 'piece', 100, 20, 500, 525),
('P07868', 'Keyboards', 2, 'piece', 10, 3, 3050, 3150),
('P07885', 'CD Drive', 2.5, 'piece', 10, 3, 5100, 5250),
('P07965', '540 HDD', 4, 'piece', 10, 3, 8000, 8400),
('P07975', '1.44 Drive', 5, 'piece', 10, 3, 1000, 1050),
('P08865', '1.22 Drive', 5, 'piece', 2, 3, 1000, 1050);


insert into salesman_master (salesman_no, sal_name, "address", city, "state", pincode, sal_amt, tgt_to_get, ytd_sales, remarks)
values
('500001', 'Kiran', 'A/14 worli', 'Bombay', 'Mah', 400002, 3000, 100, 50, 'Good'),
('500002', 'Manish', '65,nariman', 'Bombay', 'Mah', 400001, 3000, 200, 100, 'Good'),
('500003', 'Ravi', 'P-7 Bandra', 'Bombay', 'Mah', 400032, 3000, 200, 100, 'Good'),
('500004', 'Ashish', 'A/5 Juhu', 'Bombay', 'Mah', 400044, 3500, 200, 150, 'Good');

insert into sales_order (s_order_no, s_order_date, client_no, dely_type, billed_yn, salesman_no, dely_date, order_status)
values
('019001', '1996-01-12', '0001', 'F', 'N', '500001', '1996-01-20', 'in process'),
('019002', '1996-01-25', '0002', 'P', 'N', '500002', '1996-01-27', 'canceled'),
('016865',  '1996-02-18', '0003', 'F', 'N', '500003', '1996-02-20', 'fulfilled'),
('019003', '1996-04-03', '0001', 'F', 'N', '500001', '1996-04-07', 'fulfilled'),
('046866', '1996-05-20', '0004', 'P', 'N', '500002', '1996-05-22', 'canceled'),
('010008', '1996-05-24', '0005', 'F', 'N', '500004', '1996-05-26', 'in process');

insert into sales_order_details (s_order_no, product_no, qty_order, qty_disp, product_rate)
values
('019001', 'P00001', 4, 4, 525),
('019001', 'P07965', 2, 1, 8400),
('019001', 'P07885', 2, 1, 5250),
('019002', 'P00001', 10, 0, 525),
('016865', 'P07868', 3, 3, 3150),
('016865', 'P07885', 10, 10, 5250),
('019003', 'P00001', 4, 4, 1050),
('019003', 'P03453', 2, 2, 1050),
('046866', 'P06734', 1, 1, 12000),
('046866', 'P07965', 1, 0, 8400),
('010008', 'P07975', 1, 0, 1050),
('010008', 'P00001', 10, 5, 525);
