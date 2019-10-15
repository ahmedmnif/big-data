-- books example

-- database creation

create database booksdb ;

use booksdb ;

-- books table creation

create table books(id int, title string, publishdate string) row format delimited fields terminated by ',' ;

-- load data into table books

load data local inpath '/home/cloudera/Desktop/books.txt' overwrite into table books; 

-- show the first two rows of table books

select * from books where id=2;


-- create table purchase 

create table purchases (id int, buyer string, purchasedate string) row format delimited fields terminated by '\t' location '/user/cloudera/external' ;

-- load data into table purchase

load data local inpath '/home/cloudera/Desktop/book-purchases.txt' overwrite into table purchases;

-- show data from table purchases 

select * from purchases;

-- show data from table purchasesbooks 

create table purchasesbooks (id int, title string, buyer string, purchasedate string) ;

-- insert data into table purchasesbooks

insert overwrite table purchasesbooks select l.id, l.title, v.buyer, v.purchasedate from books l join purchases v on l.id = v.id;

-- show the first 10 rows from table purchasesbooks

select * from purchasesbooks limit 10;











