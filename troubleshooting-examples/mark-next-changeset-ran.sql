-- liquibase formatted sql

-- changeset your.name:1
create table person2 (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
-- rollback drop table person2

-- changeset your.name:2
create table company2 (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
-- rollback drop table company2