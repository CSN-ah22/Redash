CREATE TABLE t_table(
name VARCHAR2(50)primary key,
price NUMBER(10),
regDate DATE default sysdate
);

insert into t_table
values('아메리카노',3500,sysdate);

insert into t_table
values('카페라떼',4000,sysdate);

insert into t_table
values('카페오레',4500,sysdate);

commit;

select * from t_table;