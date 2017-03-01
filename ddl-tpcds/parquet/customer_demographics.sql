create database if not exists ${DB};
use ${DB};

drop table if exists customer_demographics;

create table customer_demographics
stored as parquet TBLPROPERTIES ('PARQUET.COMPRESSION'='none','parquet.enable.dictionary'='false','parquet.page.size'='100000')
as select * from ${SOURCE}.customer_demographics;
