--liquibase formatted sql
--changeset your.name:01 labels:JIRA-7658,2023-Q1 context:UAT,PROD
CREATE TABLE table_a (
id int primary key,
name varchar(50) not null
)
--changeset your.name:01_data labels:JIRA-7658,2023-Q1 context:UAT,PROD runOnChange:true
INSERT INTO table_a values (1, 'test 1');
--changeset your.name:02 labels:JIRA-9854 context:UAT,PROD
CREATE TABLE table_b (
id int primary key,
name varchar(50) not null
)
--changeset your.name:02_alter labels:JIRA-9854,2023-Q1,ignored context:UAT,PROD
ALTER TABLE table_b add column name2 varchar(50) not null
--changeset your.name:03 labels:JIRA-2228 context:UAT,PROD
CREATE TABLE table_c (
id int primary key,
name varchar(50) not null
)
--changeset your.name:04 labels:JIRA-2525,2023-Q2 context:UAT,PROD
CREATE TABLE table_d (
id int primary key,
name varchar(50) not null
)
--changeset your.name:05 labels:JIRA-6759,2023-Q2 context:UAT,PROD
CREATE TABLE table_e (
id int primary key,
name varchar(50) not null