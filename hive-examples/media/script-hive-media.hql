-- cds examples

-- create database mediadb

create database mediadb ;

use mediadb ;

-- create table media partioned by type 

create table media (id int, title string, releasedate string) partitioned by (type string) row format delimited fields terminated by ',' ;

-- insert data into table media

load data local inpath '/home/cloudera/Desktop/books.txt' overwrite into table media partition (type='book');

load data local inpath '/home/cloudera/Desktop/dvds.txt' overwrite into table media partition (type='dvd');

load data local inpath '/home/cloudera/Desktop/cds.txt' overwrite into table media partition (type='cd'); 

-- show partitions from table media

show partitions media;

-- show media data 

select * from media ;



