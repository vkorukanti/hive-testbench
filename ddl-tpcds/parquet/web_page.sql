create database if not exists ${DB};
use ${DB};

drop table if exists web_page;

create table web_page
stored as parquet TBLPROPERTIES ('PARQUET.COMPRESSION'='none','parquet.enable.dictionary'='false','parquet.page.size'='100000')
as select * from ${SOURCE}.web_page;
