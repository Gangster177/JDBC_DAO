create schema if not exists homework;
create table if not exists homework.customers
(
    id           serial primary key,
    name         varchar(255) not null,
    surename     varchar(255),
    age          int check ( age > 0 ),
    check ( age < 150 ),
    phone_number varchar(255) default 'unknown'
);

create table if not exists homework.orders
(
    id           serial primary key,
    date timestamp not null default now(),
    customer_id  int,
    product_name varchar(255),
    amount       int          not null check (amount >= 0),
    foreign key (customer_id) references homework.CUSTOMERS (id)
);