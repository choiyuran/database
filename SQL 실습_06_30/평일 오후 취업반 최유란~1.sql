-- drop sequence
drop sequence phonebook_seq;

-- drop table
drop table phonebook cascade constraints purge;

-- create sequence
create sequence phonebook_seq
    start with 1
    maxvalue 99999
    increment by 1
    nocache
    nocycle;
    
-- create table
create table phonebook(
    idx         number              default phonebook_seq.nextval primary key,
    name        varchar2(100)       not null,
    age         number              check(0 < age and age < 120),
    pnum        varchar2(20)        unique not null
);

-- insert into
insert into phonebook(name, age, pnum) values('È«±æµ¿', 29, '010-1111-1111');
insert into phonebook(name, age, pnum) values('±è¶ÇÄ¡', 16, '010-2222-3333');
insert into phonebook(name, age, pnum) values('³ª´Üºñ', 7, '010-3333-1234');
insert into phonebook(name, age, pnum) values('½ÅÂ¯±¸', 5, '010-4444-4555');
-- Á¦¾àÁ¶°Ç À§¹è
-- insert into phonebook(name, age, pnum) values('±è±æµ¿', 19, '010-1111-1111');

-- select *
select * from phonebook order by idx;

commit;




