CREATE DATABASE `product` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use product;
create table user (
userId varchar(32) not null unique,
userName varchar(128) not  null,
userPassword varchar(128) not null
);

insert into user values ("admin","admin","admin");
##货物信息
DROP TABLE IF EXISTS `cargoinfo`;
create table cargoinfo(
id int PRIMARY key auto_increment,
cargoname VARCHAR(64) not null UNIQUE  COMMENT '货物名称',
org VARCHAR(128) comment '单位' ,
irradtype VARCHAR(32) comment '辐照方式',
irradtime datetime comment '辐照时间',
timeorg VARCHAR(32) comment '时间单位'
)comment='货物信息表';

##送货信息
DROP TABLE IF EXISTS `shippinginfo`;
create table shippinginfo(
id int PRIMARY key auto_increment,
orgname varchar(64) not null UNIQUE comment '单位名称' ,
mask varchar(255) comment '备注'
) comment='送货信息';
##送取货人
DROP TABLE IF EXISTS `bringtakeinfo`;
create table bringtakeinfo(
id int PRIMARY key auto_increment,
name VARCHAR(32) not NULL comment '姓名',
orgname varchar(64) comment '所在单位',
tel  int(16) comment '联系电话',
mask varchar(255) comment '备注'
) comment='送取货人';
##单位信息
DROP TABLE IF EXISTS `orginfo`;
create table orginfo(
id int PRIMARY key auto_increment,
orgname varchar(64) not null UNIQUE comment '计数单位名称',
mask varchar(255) comment '备注'
)comment='单位信息';
