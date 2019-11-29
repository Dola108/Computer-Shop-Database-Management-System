insert into computers (brand_name, model_no, processor, processor_clock_speed, memory, storage, price, available) values( 'Asus X441NA',           51,   'Intel CDC N3350', '1.1GHz', '4GB', '500GB', 22000, 20);
insert into computers (brand_name, model_no, processor, processor_clock_speed, memory, storage, price, available) values( 'Asus Zenbook UX310UA',  52,   'Intel Core i3',   '2.4GHz', '4GB', '1TB',   41800, 25);
insert into computers (brand_name, model_no, processor, processor_clock_speed, memory, storage, price, available) values( 'Dell Inspiration 3467', 53,   'Intel Core i5',   '2.4GHz', '4GB', '1TB',   43000, 37);
insert into computers (brand_name, model_no, processor, processor_clock_speed, memory, storage, price, available) values( 'Lenovo IP320 7th Gen',  54,   'Intel Core i5',   '2.5GHz', '8GB', '1TB',   46500, 17);
insert into computers (brand_name, model_no, processor, processor_clock_speed, memory, storage, price, available) values( 'HP 15-BS186TX 8th Gen', 55,   'Intel Core i5',   '3.4GHz', '4GB', '1TB',   47500, 13);
insert into computers (brand_name, model_no, processor, processor_clock_speed, memory, storage, price, available) values( 'Lenovo IP520s 8th Gen', 56,   'Intel Core i5',   '3.4GHz', '8GB', '1TB',   71000, 14);

insert into customer (customer_name, customer_id, contact_no, email, address) values('Mr.Rahim Chowdhury', 1, '01711895989', 'rahimur45@gmail.com',    'Gazipur, Dhaka');
insert into customer (customer_name, customer_id, contact_no, email, address) values('Mr.Tanvirul Hauque', 2, '01759785409', 'tanvzz99@yahoo.com',     'Shyamoli, Dhaka');
insert into customer (customer_name, customer_id, contact_no, email, address) values('Mr.Salam Sarder',    3, '01556920175', 'dext4219@gmail.com',     'Genda, Savar');
insert into customer (customer_name, customer_id, contact_no, email, address) values('Mr.Shuvashish Roy',  4, '01785729572', 'royshuva@gmail.com',     'Komolapur, Dhaka');
insert into customer (customer_name, customer_id, contact_no, email, address) values('Mr.Mallik Sarker',   5, '01872749167', 'mohonmolla27@yahoo.com', 'Sukrabad, Mohammadpur');
insert into customer (customer_name, customer_id, contact_no, email, address) values('Ms.Lamia Islam',     6, '01767257368', 'lamlam29@gmail.com',     'Green Road');
insert into customer (customer_name, customer_id, contact_no, email, address) values('Mr.Debashish Bosh',  7, '01872184628', 'devbosu991@gmail.com',   'Mohammadpur, Dhaka');

insert into mart (shop, shop_name, location) values(0031, 'Ryans',          'Dhaka');
insert into mart (shop, shop_name, location) values(0032, 'Computer Hut',   'Dhaka');
insert into mart (shop, shop_name, location) values(0037, 'Buy Pc',         'Mohammadpur');
insert into mart (shop, shop_name, location) values(0033, 'Ryans IDB',      'Dhaka');
insert into mart (shop, shop_name, location) values(0034, 'PC Center',      'Elephant Road');
insert into mart (shop, shop_name, location) values(0036, 'Computers',      'Elephant Road');
insert into mart (shop, shop_name, location) values(0038, 'Zas Computer',   'Sobhanbagh');
insert into mart (shop, shop_name, location) values(0035, 'PC Shop',        'Dhaka');

insert into shop (shop_id, model_no, available) values(0031, 51,  10);
insert into shop (shop_id, model_no, available) values(0032, 51,  2);
insert into shop (shop_id, model_no, available) values(0038, 51,  1);
insert into shop (shop_id, model_no, available) values(0035, 51,  5);
insert into shop (shop_id, model_no, available) values(0037, 51,  2);
insert into shop (shop_id, model_no, available) values(0031, 52,  8);
insert into shop (shop_id, model_no, available) values(0032, 52,  10);
insert into shop (shop_id, model_no, available) values(0035, 52,  7);
insert into shop (shop_id, model_no, available) values(0036, 52,  6);
insert into shop (shop_id, model_no, available) values(0032, 53,  10);
insert into shop (shop_id, model_no, available) values(0033, 53,  12);
insert into shop (shop_id, model_no, available) values(0034, 53,  5);
insert into shop (shop_id, model_no, available) values(0033, 54,  8);
insert into shop (shop_id, model_no, available) values(0036, 54,  4);
insert into shop (shop_id, model_no, available) values(0038, 54,  5);
insert into shop (shop_id, model_no, available) values(0037, 55,  7);
insert into shop (shop_id, model_no, available) values(0038, 55,  6);
insert into shop (shop_id, model_no, available) values(0031, 56,  6);
insert into shop (shop_id, model_no, available) values(0033, 56,  3);
insert into shop (shop_id, model_no, available) values(0035, 56,  5);

commit;