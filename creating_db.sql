-- creating databases
use sakila;
select database();
create database if not exists pehla_db;
use pehla_db;
-- delete database
drop database pehla_db;
show databases;