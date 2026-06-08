CREATE DATABASE Bicycle;
use Bicycle;

drop table if exists customer;
create table customer
(
	id		int primary key,
	name	varchar(30),
	email	varchar(50)
);


drop table if exists bike;
create table bike
(
	id					int primary key,
	model				varchar(50),
	category			varchar(50),
	price_per_hour		decimal,
	price_per_day		decimal,
	status				varchar(20)
);


drop table if exists rental;
create table rental
(
	id					int primary key,
	customer_id			int references customer(id),
	bike_id				int references bike(id),
	start_timestamp		timestamp,
	duration			int,
	total_paid			decimal
);


drop table if exists membership_type;
create table membership_type
(
	id				int primary key,
	name			varchar(50),
	description		varchar(500),
	price			decimal
);


drop table if exists membership;
create table membership
(
	id					int primary key,
	membership_type_id	int references membership_type(id),
	customer_id			int references customer(id),
	start_date			date,
	end_date			date,
	total_paid			decimal
);



insert into customer values(1,	'John Doe',			'john.doe@example.com');
insert into customer values(2,	'Alice Smith',		'alice.smith@example.com');
insert into customer values(3,	'Bob Johnson',		'bob.johnson@example.com');
insert into customer values(4,	'Eva Brown',		'eva.brown@example.com');
insert into customer values(5,	'Michael Lee',		'michael.lee@example.com');
insert into customer values(6,	'Sarah White',		'sarah.white@example.com');
insert into customer values(7,	'David Wilson',		'david.wilson@example.com');
insert into customer values(8,	'Emily Davis',		'emily.davis@example.com');
insert into customer values(9,	'Daniel Miller',	'daniel.miller@example.com');
insert into customer values(10,	'Olivia Taylor',	'olivia.taylor@example.com');


insert into bike values(1,	'Mountain Bike 1'	,'mountain bike'	,10.00	,50.00	,'available');
insert into bike values(2,	'Road Bike 1'	,'road bike',12.00	,60.00	,'available');
insert into bike values(3,	'Hybrid Bike 1'	,'hybrid'	,8.00	,40.00	,'rented');
insert into bike values(4,	'Electric Bike 1'	,'electric',15.00	,75.00	,'available');
insert into bike values(5,	'Mountain Bike 2'	,'mountain bike'	,10.00	,50.00	,'out of service');
insert into bike values(6,	'Road Bike 2'	,'road bike',12.00	,60.00	,'available');
insert into bike values(7,	'Hybrid Bike 2'	,'hybrid'	,8.00	,40.00	,'out of service');
insert into bike values(8,	'Electric Bike 2'	,'electric',15.00	,75.00	,'available');
insert into bike values(9,	'Mountain Bike 3'	,'mountain bike'	,10.00	,50.00	,'rented');
insert into bike values(10,	'Road Bike 3'	,'road bike',12.00	,60.00	,'available');


insert into rental values(1,	1,	1,	'2022-11-01 10:00:00',	240,	50.00);
insert into rental values(2,	1,	1,	'2022-11-02 10:00:00',	245,	50.00);
insert into rental values(3,	1,	1,	'2022-11-03 10:00:00',	250,	50.00);
insert into rental values(4,	1,	1,	'2022-11-04 10:00:00',	235,	50.00);
insert into rental values(5,	1,	1,	'2022-12-05 10:00:00',	155,	50.00);
insert into rental values(6,	2,	2,	'2022-12-08 11:00:00',	250,	60.00);
insert into rental values(7,	3,	3,	'2022-12-13 12:00:00',	245,	40.00);
insert into rental values(8,	1,	1,	'2023-01-05 10:00:00',	240,	50.00);
insert into rental values(9,	2,	2,	'2023-01-08 11:00:00',	235,	60.00);
insert into rental values(10,	3,	3,	'2023-02-13 12:00:00',	245,	40.00);
insert into rental values(11,	1,	1,	'2023-03-05 10:00:00',	250,	50.00);
insert into rental values(12,	2,	2,	'2023-03-08 11:00:00',	355,	60.00);
insert into rental values(13,	3,	3,	'2023-04-13 12:00:00',	240,	40.00);
insert into rental values(14,	1,	1,	'2023-04-01 10:00:00',	235,	50.00);
insert into rental values(15,	1,	6,	'2023-05-01 10:00:00',	245,	60.00);
insert into rental values(16,	1,	2,	'2023-05-01 10:00:00',	250,	60.00);
insert into rental values(17,	1,	3,	'2023-06-01 10:00:00',	235,	40.00);
insert into rental values(18,	1,	4,	'2023-06-01 10:00:00',	255,	75.00);
insert into rental values(19,	1,	5,	'2023-07-01 10:00:00',	240,	50.00);
insert into rental values(20,	2,	2,	'2023-07-02 11:00:00',	445,	60.00);
insert into rental values(21,	3,	3,	'2023-07-03 12:00:00',	250,	40.00);
insert into rental values(22,	4,	4,	'2023-08-04 13:00:00',	235,	75.00);
insert into rental values(23,	5,	5,	'2023-08-05 14:00:00',	555,	50.00);
insert into rental values(24,	6,	6,	'2023-09-06 15:00:00',	240,	60.00);
insert into rental values(25,	7,	7,	'2023-09-07 16:00:00',	245,	40.00);
insert into rental values(26,	8,	8,	'2023-09-08 17:00:00',	250,	75.00);
insert into rental values(27,	9,	9,	'2023-10-09 18:00:00',	335,	50.00);
insert into rental values(28,	10,	10,	'2023-10-10 19:00:00',	255,	60.00);
insert into rental values(29,	10,	1,	'2023-10-10 19:00:00',	240,	50.00);
insert into rental values(30,	10,	2,	'2023-10-10 19:00:00',	245,	60.00);
insert into rental values(31,	10,	3,	'2023-10-10 19:00:00',	250,	40.00);
insert into rental values(32,	10,	4,	'2023-10-10 19:00:00',	235,	75.00);


insert into membership_type values(1,'Basic Monthly',	'Unlimited rides with non-electric bikes. Renews monthly.',	100.00);
insert into membership_type values(2,'Basic Annual',	'Unlimited rides with non-electric bikes. Renews annually.',500.00);
insert into membership_type values(3,'Premium Monthly',	'Unlimited rides with all bikes. Renews monthly.',	200.00);


insert into membership values(1,	2,	3,	'2023-08-01',	'2023-08-31',	500.00);
insert into membership values(2,	1,	2,	'2023-08-01',	'2023-08-31',	100.00);
insert into membership values(3,	3,	4,	'2023-08-01',	'2023-08-31',	200.00);
insert into membership values(4,	1,	1,	'2023-09-01',	'2023-09-30',	100.00);
insert into membership values(5,	2,	2,	'2023-09-01',	'2023-09-30',	500.00);
insert into membership values(6,	3,	3,	'2023-09-01',	'2023-09-30',	200.00);
insert into membership values(7,	1,	4,	'2023-10-01',	'2023-10-31',	100.00);
insert into membership values(8,	2,	5,	'2023-10-01',	'2023-10-31',	500.00);
insert into membership values(9,	3,	3,	'2023-10-01',	'2023-10-31',	200.00);
insert into membership values(10,	3,	1,	'2023-11-01',	'2023-11-30',	200.00);
insert into membership values(11,	2,	5,	'2023-11-01',	'2023-11-30',	500.00);
insert into membership values(12,	1,	2,	'2023-11-01',	'2023-11-30',	100.00);

select * from customer;
select * from bike;
select * from rental;
select * from membership_type;
select * from membership;

use bicycle;

-- Problem Statement.

--  1) how many bikes the shop owns by category

select category, count(*) as number_of_bike from bike
group  by category
having count(*)>1;

-- 2) customer names with the total number of memberships purchased by each.

select c.name, count(m.membership_type_id) as membership_count from customer as c
left join membership as m
on c.id=m.customer_id
group by c.name
order by membership_count desc;

-- 3) prepare a list of new rental prices.

select id, category, price_per_hour as old_hour_price, price_per_day as old_day_price,
CASE WHEN category = 'electric' THEN price_per_hour * 0.90
WHEN category = 'mountain bike' THEN price_per_hour * 0.80
ELSE price_per_hour * 0.50 END AS new_hour_price,
CASE WHEN category = 'electric' THEN price_per_day * 0.80
WHEN category = 'mountain bike' THEN price_per_day * 0.50
ELSE price_per_day * 0.50 END AS new_day_price
 from bike;
 
 -- 4) counts of the rented bikes and of the available bikes in each category

SELECT category,
count(CASE WHEN status = 'available' THEN 1 END) AS available_bikes_count,
count(CASE WHEN status = 'rented' THEN 1 END) AS Total_rented_bike
FROM bike 
GROUP BY category;

-- 5)total revenue from rentals by month, the total by year, and the all-time across all the years.

SELECT EXTRACT(YEAR FROM start_timestamp) AS year,EXTRACT(MONTH FROM start_timestamp) AS month,
SUM(total_paid) AS revenue FROM rental
GROUP BY EXTRACT(YEAR FROM start_timestamp), EXTRACT(MONTH FROM start_timestamp)
WITH ROLLUP;

-- 6)  total revenue from memberships
select m1.name as membership_type_name,year(m2.start_date) as Year_,
month (m2.start_date) as Month_,
sum(total_paid) as revenue
from membership_type as m1
left join membership as m2  on m1.id=m2.membership_type_id
group by m1.name,year(m2.start_date),month (m2.start_date)
order by Year_,Month_,membership_type_name;

--  7)total revenue from memberships purchased in 2023 for each combination of month and membership type.

select m1.name as membership_type_name,year(m2.start_date) as Year_,
month (m2.start_date) as Month_,
sum(total_paid) as revenue
from membership_type as m1
left join membership as m2  on m1.id=m2.membership_type_id
where year(m2.start_date) ="2023"
group by m1.name,year(m2.start_date),month (m2.start_date)
order by Year_,Month_,membership_type_name;


--  8) Calculate the number of customers in each category.

select category as rental_count_category,count(*) as customer_count from (
select customer_id, 
case when count(bike_id)>=10 then "more than 10" 
when count(bike_id) between 5 and 10 then "between 5 and 10"  
else "less than 10" end as category,
count(customer_id) as customer_count 
from rental
group by customer_id ) a
group by a.category
order by customer_count asc;
