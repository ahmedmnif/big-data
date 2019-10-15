create TABLE stations ( usaf STRING , wban STRING , name STRING )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES("input.regex"="(\\d{6}) (\\d{5}) (.{29}).*");


LOAD DATA INPATH '/user/sample_data/stations-fixed-width.txt' OVERWRITE INTO TABLE stations;


select * from stations where name LIKE 'PARIS%' ;