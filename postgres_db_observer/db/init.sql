create sequence restaurant_id_seq
    as integer;

create sequence store_id_seq
    as integer;

create table store
(
    id      serial
        constraint store_pk
            primary key,
    name    varchar(50),
    address varchar(150),
    city    varchar(50)
);

alter table store
    owner to postgres;

create unique index store_id_uindex
    on store (id);


create table restaurant
(
    id      serial
        constraint restaurant_pk
            primary key,
    name    varchar(50),
    address varchar(150),
    city    varchar(50)
);

alter table restaurant
    owner to postgres;

create unique index restaurant_id_uindex
    on restaurant (id);

alter sequence store_id_seq owner to postgres;

alter sequence store_id_seq owned by store.id;

alter sequence restaurant_id_seq owner to postgres;

alter sequence restaurant_id_seq owned by restaurant.id;



insert into restaurant (name, address, city)
values ('Don Carlo', 'piazza Napoli 12', 'Milano'),
       ('Fra Diavolo Pizzeria - Milano Sempione', 'via Giulio Acciani 54', 'Roma'),
       ('Pitstop Milano Pizza Kebab', 'via Delli Alpi 1', 'Torino');


insert into store (name, address, city)
values ('Decathlon Corsico', 'Via della Industria, 2-4, 20094', 'Milano'),
       ('Intersport', 'Via Arona, 15, 20149', 'Milano'),
       ('Polo Sport Snc', 'Piazza Riccardo Wagner, 2, 20145', 'Milano');