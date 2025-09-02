show databases;

# Create a database
create database artgallery;


# Create a new table for user 
create table artgallery.user_details(
user_name varchar(25),
user_email varchar(50),
user_pass varchar(25),
Created_at datetime DEFAULT current_timestamp
)


SELECT * FROM artgallery.user_details;