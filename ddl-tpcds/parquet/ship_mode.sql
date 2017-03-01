create database if not exists ${DB};
use ${DB};

drop table if exists ship_mode;

create table ship_mode
stored as parquet TBLPROPERTIES ('PARQUET.COMPRESSION'='none','parquet.enable.dictionary'='false','parquet.page.size'='100000')
as select * from ${SOURCE}.ship_mode;
