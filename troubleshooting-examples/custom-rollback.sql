-- liquibase formatted sql

-- changeset lbuser:20200908
insert into CustomerDetails values ('A','Customer NumberOne', 'Austin')
insert into CustomerDetails values ('A','Customer NumberTwo', 'Dallas')
-- rollback delete from CustomerDetails where id='A'