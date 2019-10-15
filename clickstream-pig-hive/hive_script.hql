
create external table parsed_logs
(logdate string,
 url string,
 ip string,
 city string,
 state string,
 country string,
 swid string
 )
 ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'  location '/user/cloudera/pig_hive/pig_out_parsed_logs';
 
 
select * from parsed_logs limit 10 ;





create external table products
(url string,
 category string
 )
 ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'  location '/user/cloudera/pig_hive/pig_out_products';
 
 
select * from products limit 10 ;





create external table users
(SWID string,
 BIRTH_DT string,
 GENDER_CD string
 )
 ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'  location '/user/cloudera/pig_hive/pig_out_users';
 
 
select * from users limit 10 ;
 
