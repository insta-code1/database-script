USE db_try_mysql;

drop table if exists orders;
drop table if exists people;
drop table if exists products;
drop table if exists order_line_items;

create table people (
	id			integer auto_increment,
    first_name varchar(50),
    second_name varchar(50),
    primary key (id)
    );
    
create table orders (
	id			integer auto_increment,
    amount		decimal(18,2),
    person_id	int,
    primary key	(id),
    foreign key	(person_id) references people(id)
	);
    
create table products (
	id			integer auto_increment,
    description	varchar(50),
    price		decimal(18,2),
    primary key (id)
    );
    
create table order_line_items (
    order_id	int,
    product_id	int,
    quantity	int,
    primary key (order_id, product_id)
    );