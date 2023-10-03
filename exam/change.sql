--liquibase formatted sql
--changeset your.name:102 context:"!prod AND v.1.1"
--comment hello1
create table test (test varchar(10))