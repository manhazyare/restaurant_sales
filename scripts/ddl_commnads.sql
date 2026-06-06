create database restaurant_sales
use restaurant_sales
create table restaurant_data(
order_id int primary key,
order_date date,
product_name varchar(50),
price  decimal(18,2) ,
quantity decimal(18,2),
purchase_type varchar(50),
payment_method varchar(50),
manager varchar(50),
city varchar(50)
)

insert into restaurant_data(
order_id,
date,
product,
price,
Quantity,
Purchase_Type,
Payment_Method,
Manager,
City)
select 
order_id,
order_date,
product_name,
round(price,2) as price,
round(Quantity,2) as quantity,
Purchase_Type,
Payment_Method,
Manager,
City
from [restaurant_sales].[dbo].[9. Sales-Data-Analysis]
