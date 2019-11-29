drop table transactions;
drop table shop;
drop table mart;
drop table customer;
drop table computers;

create table computers (
	brand_name            varchar(35),
	model_no              number(3),
	processor             varchar(20),
	processor_clock_speed varchar(7),
	memory                varchar(6),
	storage               varchar(5),
	price                 number(6),
	available			  integer,
	primary key (model_no)
	);
	
create table customer (
	customer_name varchar(20),
	customer_id   number(2),
	contact_no    varchar(11),
	email         varchar(25),
	address       varchar(21),
	bill            number,
	primary key (customer_id)
	);

create table mart (
	shop      number(4),
	shop_name varchar(12),
	location  varchar(14), 
	primary key (shop)
	);

create table transactions (
	tran_no		number(4),
	dates		varchar (10),
	customer    number(2),
	shop_id 	number(4),
	model 		number(3),
	quantity	number,
	primary key (tran_no),
    foreign key (customer) references customer (customer_id) on delete cascade,
	foreign key (shop_id) references mart (shop) on delete cascade,
	foreign key (model)   references computers (model_no) on delete cascade
	);

create table shop (
	shop_id number(4),
	model_no number(3),
	available integer,
	foreign key (shop_id) references mart (shop) on delete cascade,
	foreign key (model_no) references computers (model_no) on delete cascade
);
	
commit;