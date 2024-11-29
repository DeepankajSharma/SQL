create database monday_coffee_expansion;
use monday_coffee_expansion;
drop table if exists sales;
drop table if exists city;
drop table if exists customer;
drop table if exists product;

create table city(
city_id int primary key,
city_name varchar(50),
population int,
estimated_rent int,
city_rank int 
);

create table customer(
customer_id int primary key,
customer_name varchar(50),
city_id int ,
constraint fk_city foreign key(city_id) references city(city_id)
);

create table product(
product_id int primary key,
product_name varchar(70),
price int
);


create table sales(
sales_id int primary key,
sales_date date,
product_id int,
customer_id int,
total int,
rating int ,
constraint fk_products foreign key (product_id) references product(product_id) ,
constraint fk_customer foreign key (customer_id) references customer(customer_id)
);