create schema if not exists netology;

create table if not exists netology.orders (
        id int not null primary key auto_increment,
        date date not null,
        customer_id int not null,
        product_name varchar(255) not null,
        amount int not null,
        foreign key (customer_id) references netology.customers (id)
);

insert ignore into netology.orders
values  (1, '2022-01-01', 3, 'Porsche Macan', 1),
        (2, '2022-05-21', 1, 'Porsche 911', 3),
        (3, '2023-03-08', 5, 'Porsche 718', 2),
        (4, '2022-10-15', 8, 'Porsche Cayenne', 3),
        (5, '2022-12-12', 4, 'Porsche Taycan', 1),
        (6, '2022-08-11', 6, 'Porsche Panamera', 1),
	(7, '2022-07-17', 7, 'Porsche Macan', 1),
        (8, '2022-06-11', 8, 'Porsche 911', 2),
        (9, '2023-03-18', 9, 'Porsche 718', 2);

create table if not exists netology.customers (
    id int not null primary key auto_increment,
    name varchar(255) not null,
    surname varchar(255) not null,
    age int not null,
    phone_number varchar(255) not null
);

insert ignore into netology.customers
values  (1, 'Katerina', 'Zotova', 24, '+79825389645'),
        (2, 'Petr', 'Zinin', 27, '+79845236589'),
        (3, 'Vitalina', 'Perova', 25, '+79845536689'),
        (4, 'Lev', 'Morskoy', 27, '+79845211119'),
        (5, 'Maria', 'Morskaya', 24, '+79845211229'),
        (6, 'Anna', 'Kozakova', 21, '+79845212229'),
        (7, 'Vera', 'Tinina', 20, '+73335212229'),
        (8, 'Anna', 'Markova', 21, '+72245212229'),
	(9, 'Alexey', 'Kozakov', 31, '+79841112211'),
        (10, 'Alexey', 'Tinin', 36, '+73311212211'),
        (11, 'Alexey', 'Markov', 45, '+71145212229');