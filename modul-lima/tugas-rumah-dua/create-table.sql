-- Create Table Customer and Orders
CREATE TABLE customer (customer_id varchar (5) PRIMARY KEY,
                       customer_name varchar (50),
                       customer_address varchar (50));
                       
CREATE TABLE orders (order_id varchar (5) PRIMARY KEY,
                     order_date date,
                     customer_id varchar (5),
                     qty int,
                     amount int);

-- Insert data into table customer
INSERT INTO customer VALUES 
('CS001','Aan','Pasuruan'),
('CS002','Hanif','Banyuwangi'),
('CS003','Mirza','Malang'),
('CS004','Tanti','Tegal'),
('CS005','Budie','Kediri');

-- Insert data into table Orders
INSERT INTO orders VALUES
('CS001','2016-12-10','CS001','1','40000'),
('CS002','2017-01-11','CS002','2','50000'),
('CS003','2017-01-12','CS005','3','35000'); 