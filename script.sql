CREATE TABLE t_table(
name VARCHAR2(50)primary key,
price NUMBER(10),
regDate DATE default sysdate
);

insert into t_table
values('�Ƹ޸�ī��',3500,sysdate);

insert into t_table
values('ī���',4000,sysdate);

insert into t_table
values('ī�����',4500,sysdate);

commit;

select * from t_table;