create table client_master (
	client_no varchar(6),
	"name" varchar(20),
	address1 varchar(30),
	address2 varchar(30),
	city varchar(15),
	"state" varchar(20),
	pincode decimal(6, 0),
	bal_duq decimal(10, 2),
	constraint pk_client_no primary key (client_no)
);

create table product_master (
	product_no varchar(6),
	"description" varchar(50),
	profit_percent decimal(8, 0),
	unit_measure varchar(10),
	qty_on_hand decimal(12, 0),
	reorder_lvl decimal(12, 0),
	sell_prace decimal(12, 0),
	cost_price decimal(12, 0),
	constraint pk_product_no primary key(product_no)
);

create table salesman_master (
	salesman_no varchar(6),
	sal_name varchar(20) not null,
	"address" varchar(20) not null,
	city varchar(20),
	"state" varchar(20),
	pincode decimal(6, 0),
	sal_amt decimal(8, 2) not null,
	tgt_to_get decimal(6, 2) not null,
	ytd_sales decimal(6, 2) not null,
	remarks varchar(30),
	constraint pk_selesman_no primary key (salesman_no),
	constraint selesman_no_chk check (salesman_no like '5%'),
	constraint selesman_master_chk check (sal_amt <> 0 and tgt_to_get <> 0 and ytd_sales <> 0) 
);

create table sales_order (
	s_order_no varchar(6),
	s_order_date date,
	client_no varchar(6),
	dely_add varchar(6),
	salesman_no varchar(6),
	dely_type char(1) not null default 'f',
	billed_yn char(1),
	dely_date date,
	order_status varchar(10),
	constraint pk_s_order_no primary key (s_order_no),
	constraint fk_client_no foreign key (client_no) references client_master(client_no),
	constraint s_order_no_chk check (s_order_no like '0%'),
	constraint fk_selesman_no foreign key (salesman_no) references salesman_master(salesman_no),
	constraint dely_type_chk check (dely_type in ('p', 'f')),
	constraint dely_date_chk check (dely_date >= s_order_date),
	constraint order_status_chk check (order_status in ('in process', 'fulfilled', 'back order', 'canceled'))
);

create table sales_order_details (
	s_order_no varchar(6),
	product_no varchar(6),
	qty_order decimal(8, 0),
	qty_disp decimal(8, 0),
	product_rate decimal(12, 2),
	constraint pk_sales_order_details primary key(s_order_no, product_no),
	constraint fk_s_order_no foreign key (s_order_no) references sales_order(s_order_no),
	constraint fk_produt_no foreign key (product_no) references product_master(product_no)
);