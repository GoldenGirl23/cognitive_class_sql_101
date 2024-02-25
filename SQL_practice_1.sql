--- Drop table INSTRUCTOR in case it already exists
DROP TABLE INSTRUCTORS;

--- Create INSTRUCTORS table
CREATE TABLE INSTRUCTORS(
	ins_id int PRIMARY KEY NOT NULL,
	lastname varchar(20) NOT NULL,
	firstname varchar(20) NOT NULL,
	city varchar(20),
	country char(2)
	
);

--- Insert values into INSTRUCTORS table
INSERT INTO INSTRUCTORS (ins_id, lastname, firstname, city, country) 
VALUES (1, 'Ahuja', 'Rav', 'Toronto', 'CA'),
(2, 'Chong', 'Raul', 'Toronto', 'CA'),
(3, 'Vasudevan', 'Hima', 'California', 'US');

--- Select all rows in the table
SELECT * FROM INSTRUCTORS;

--- Select firstname, lastname and country where city is Toronto
SELECT firstname, lastname, country FROM INSTRUCTORS 
WHERE city = 'Toronto';

--- Change the city for Rav to Markham
UPDATE INSTRUCTORS
SET city = 'Markhan'
WHERE ins_id = 1;

--- Delete the row for Raul Chong
DELETE FROM INSTRUCTORS
WHERE firstname = 'Raul' AND lastname = 'Chong';



