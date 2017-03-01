create database if not exists ${DB};
use ${DB};

drop table if exists catalog_page;

create table catalog_page
stored as parquet TBLPROPERTIES ('PARQUET.COMPRESSION'='none','parquet.enable.dictionary'='false','parquet.page.size'='100000')
as select * from ${SOURCE}.catalog_page;
