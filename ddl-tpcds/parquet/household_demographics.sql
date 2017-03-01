create database if not exists ${DB};
use ${DB};

drop table if exists household_demographics;

create table household_demographics
stored as parquet TBLPROPERTIES ('PARQUET.COMPRESSION'='none','parquet.enable.dictionary'='false','parquet.page.size'='100000')
as select * from ${SOURCE}.household_demographics;
