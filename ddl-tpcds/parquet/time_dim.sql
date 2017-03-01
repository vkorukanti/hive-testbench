create database if not exists ${DB};
use ${DB};

drop table if exists time_dim;

create table time_dim
stored as parquet TBLPROPERTIES ('PARQUET.COMPRESSION'='none','parquet.enable.dictionary'='false','parquet.page.size'='100000')
as select * from ${SOURCE}.time_dim;
