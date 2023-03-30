 ALTER SESSION SET "_ORACLE_SCRIPT"=true; 
-- CREATE USER--
CREATE USER shopping_cart IDENTIFIED BY root;
--GRANT PERMISSIONS TO USER--
GRANT create session To shopping_cart;
GRANT create table To shopping_cart;
GRANT create view TO shopping_cart;
GRANT create any trigger To shopping_cart; 
GRANT create any procedure To shopping_cart;
GRANT create sequence To shopping_cart;
GRANT create synonym To shopping_cart;
GRANT ALL PRIVILEGES TO shopping_cart;
GRANT CONNECT TO shopping_cart;
GRANT RESOURCE TO shopping_cart;


drop table orders;

CREATE TABLE orders (
  o_id  number generated always as identity not null,
  p_id int NOT NULL,
  u_id int NOT NULL,
  o_quantity int NOT NULL,
  o_date varchar2(450) NOT NULL,
  PRIMARY KEY (o_id)
  );
insert into orders(p_id,u_id,o_quantity,o_date) VALUES (3,1,3,'2021-05-15');
insert into orders(p_id,u_id,o_quantity,o_date) VALUES (4,5,3,'2021-05-10');
select*from orders;
commit;



Create Table users(
id number generated always as identity not null,
name VARCHAR2(250) not null,
email VARCHAR2(250) not null,
password VARCHAR2(250) not null,
address varchar2(50) not null,
city varchar2(30) not null,
state varchar2(10) not null,
pincode varchar2(10) not null,
mobile varchar2(10) not null,
PRIMARY KEY (id),
UNIQUE(email)
);


select*from users; 
drop table users;
insert into users(name ,email,password,address,city,state,pincode,mobile) VALUES ('RUHI','ruhip@gmail.com','123456','trimurti nagar','jabalpur','MP','482001','1254987621');
insert into users(name ,email,password,address,city,state,pincode,mobile) VALUES ('SUHI','suhip@gmail.com','123446','trimurti nagar','jabal','UP','482091','1254987620');
commit;


drop TABLE products;
CREATE TABLE products (
id number generated always as identity not null,
name varchar2 (450) NOT NULL,
category varchar2 (450) NOT NULL,
price number (10,2) NOT NULL, 
image varchar (450) NOT NULL,
PRIMARY KEY (id)

);

INSERT INTO products(name,category,price,image) VALUES ('Cheese Pizza','Cheesy',120,'cheese.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Veggie Pizza','veg Pizza',89.99,'veggie.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Pepperoni Pizza','veg Pizza',169,'pepperoni.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Meat Pizza','Non-Veg Pizza',250.99,'meat.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Margherita Pizza','Veg Pizza',310,'margherita.jpg');
INSERT INTO products(name,category,price,image) VALUES ('BBQ Chicken Pizza','Non-Veg Pizza',555.5,'bbq.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Hawaiian Pizza','Non-Veg Pizza',410,'hawaiiyan.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Buffalo Pizza','Non-Veg Pizza',510,'buffalo.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Supreme Pizza','Veg Pizza',810,'supreme.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Works Pizza','Veg Pizza',780,'works.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Golden Corn','Veg Pizza',100,'goldencorn.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Panner n Onion','Veg Pizza',120,'paneeronion.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Panner n Capsicum','Veg Pizza',300,'paneercapsi.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Veg Paradise','Veg Pizza',269,'paradise.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Veggie fiesta','Veg Pizza',310,'fiesta.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Veg Delight','Veg Piza',259,'delight.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Paneer Spice','Veg Pizza',199,'spice.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Chicken Sausage','Non-Pizza',367,'sausage.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Chicken n Corn Delight','Non-Veg Pizza',450,'corn-delight.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Tandoori Classic','Non-Veg Pizza',240,'tandoori.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Tandoori Tikka n Onion','Non-Veg Pizza',567,'tikka.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Chicken Pepproni','Non-Veg Pizza',238,'chickenpepperoni.jpg');
INSERT INTO products(name,category,price,image) VALUES('Italian Chicken Feast','Non-Veg Pizza',299,'feast.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Malai Chicken Tikka','Non-Veg Pizza',564,'malai.jpg');
 

INSERT INTO products(name,category,price,image) VALUES ('Garlic Breadsticks','Patties',159,'garlic .jpg');
INSERT INTO products(name,category,price,image) VALUES ('Classic Stuffed','Garlic Bread',179,'stuffed.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Paneer Tikka Stuffed','Garlic Bread',205,'bread.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Taco Mexicana Veg','Veg',114,'taco.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Veg Parcel','Veg',117,'parcel.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Potato Cheese Shots','Fries',56,'potato.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Crinkle Fries','Fries',118,'crinkle.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Crunchy Strips','Strips',206,'crunchy.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Red Velvet Lava Cake','Dessert',139,'redvelvet.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Choco Lava Cake','Dessert',99,'choco.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Butterscotch Mousse Cake','Dessert',111,'mousse.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Brownie Fantasy','Dessert',79,'brownie.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Nagpur Orange','Beverages',70,'nagpur.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Pepsi 475ml','Beverages',60,'pepsi.jpg');
INSERT INTO products(name,category,price,image) VALUES ('7Up 475ml','Beverages',90,'up.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Mirinda 475ml','Beverages',70,'mirinda.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Veggie Buddies','No Onion No Garlic',444,'buddies.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Veggie Fiesta','No Onion No Garlic',524,'noonion.jpg');
INSERT INTO products(name,category,price,image) VALUES ('Triple Veg Delight','No Onion No Garlic',524,'triple.jpg');
INSERT INTO products(name,category,price,image) VALUES ('The 4 Cheese Pizza','veg',639,'4cheese.jpg');



commit;




select*from products;



 