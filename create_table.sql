create table "user"(
                       id      int generated by default as identity primary key,
                       name    varchar(100) not null,
                       surname varchar(100) not null,
                       email   varchar(150) unique
);
create table "basket"
(
    id int generated by default as identity primary key,
    basket_id int unique references "user" (id) on delete set null

);
create table "category"
(
    id            int generated by default as identity primary key,
    category_name varchar(75) UNIQUE not null
);

create table "productList"
(
    id          int generated by default as identity primary key,
    category_id int references "category" (id) on delete set null,
    name        varchar UNIQUE not null
);

create table "order"
(
    id      int generated by default as identity primary key,
    user_id int references "user" (id) on delete set null


);

create table "order_products"
(

    order_id   int references "order" (id) on delete set default,
    product_id int

);

create table "basket_product"
(
    basket_id  int references "basket" (id) on delete set null,
    product_id int
)

