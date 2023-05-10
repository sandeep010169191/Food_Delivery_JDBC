{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 create database food_delivery_platform;\
use food_delivery_platform;\
\
create table restaurants_kolkata(\
	Rest_id int(2) not null auto_increment,\
    Rest_name varchar(50),\
    Rest_contact int(10),\
    Rest_location varchar(50),\
    Rest_hours varchar(20),\
    primary key(Rest_id)\
);\
\
create table restaurants_delhi(\
	Rest_id int(2) not null auto_increment,\
    Rest_name varchar(50),\
    Rest_contact int(10),\
    Rest_location varchar(50),\
    Rest_hours varchar(20),\
    primary key(Rest_id)\
);\
\
create table restaurants_chennai(\
	Rest_id int(2) not null auto_increment,\
    Rest_name varchar(50),\
    Rest_contact int(10),\
    Rest_location varchar(50),\
    Rest_hours varchar(20),\
    primary key(Rest_id)\
);\
\
insert into restaurants_kolkata(\
Rest_id, Rest_name, Rest_contact, Rest_location, Rest_hours\
) values (\
	1,\
    'Wow Momo',\
    1234567890,\
    'Metropolitan Housing Society',\
    '10am - 9pm'\
);\
insert into restaurants_kolkata(\
Rest_id, Rest_name, Rest_contact, Rest_location, Rest_hours\
) values (\
	2,\
    'JW Marriot',\
    33333333,\
    'EM Bypass, Near Ruby Hospital',\
    '10am - 12 midnight'\
),(\
	3,\
    'Bachchhan Dhaba',\
    11111111,\
    'Jadavpur',\
    '12noon - 8pm'\
),(\
	4,\
    'Alisha Restuarant',\
    22222222,\
    'Chingrighata',\
    '8am - 11pm'\
);\
\
insert into restaurants_delhi(\
Rest_id, Rest_name, Rest_contact, Rest_location, Rest_hours\
) values (\
	1,\
    'Delhi da Dhaba',\
    1357924680,\
    'Mayur-Vihar Phase-1',\
    '11am - 10pm'\
);\
\
insert into restaurants_chennai(\
Rest_id, Rest_name, Rest_contact, Rest_location, Rest_hours\
) values (\
	1,\
    'Famous Idli',\
    1237894560,\
    'City Center',\
    '9am - 9pm'\
);\
\
select * from restaurants_kolkata;\
select * from restaurants_delhi;\
select * from restaurants_chennai;\
\
create table wow_momo_menu(\
	Rest_id int(2),\
	ID int(2) not null auto_increment,\
    Food_items varchar(50),\
    Price varchar(20),\
    primary key(ID),\
    foreign key(Rest_id) references restaurants_kolkata(Rest_id)\
);\
\
insert into wow_momo_menu(\
	Rest_id, ID, Food_items, Price\
) values (\
	1,\
    1,\
    'Chicken Momo',\
    'Rs.100/-'\
);\
insert into wow_momo_menu(\
	Rest_id, ID, Food_items, Price\
) values (\
	1,\
    2,\
    'Veg Momo',\
    'Rs.80/-'\
),(\
	1,\
    3,\
    'Non_veg fried Momo',\
    'Rs.120/-'\
),(\
	1,\
    4,\
    'Veg fried Momo',\
    'Rs.90/-'\
);\
\
select * from wow_momo_menu;\
\
create table orders(\
	Order_id int(2) not null auto_increment,\
    Rest_id int(2),\
    primary key(Order_id),\
    foreign key(Rest_id) references restaurants_kolkata(Rest_id)\
);\
create table customers(\
    Cust_name varchar(50),\
    Cust_contact int(10)\
);\
insert into customers(\
Cust_name, Cust_contact\
) values (\
    'Sandeep',\
    7777777\
);\
select * from customers;\
drop table customers;}