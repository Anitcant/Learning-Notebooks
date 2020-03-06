drop table INSTRUCTOR;
create table INSTRUCTOR(
	ins_id  INT PRIMARY KEY NOT NULL,
	lastname  VARCHAR(15) NOT NULL,
	firstname  VARCHAR(15) NOT NULL,
	city  VARCHAR(15),
	COUNTRY CHAR(2)
);

INSERT INTO INSTRUCTOR
	(ins_id, lastname, firstname, city, country)
VALUES
	('1', 'Ahuja', 'Rav', 'Toronto', 'CA');
	
INSERT INTO INSTRUCTOR
	(ins_id, lastname, firstname, city, country)
VALUES
	('2', 'Chong', 'Raul', 'Toronto', 'CA'),
	('3', 'Vasudevan', 'Hima', 'Chicago', 'US');
	
SELECT * FROM INSTRUCTOR;

SELECT lastname, firstname, country FROM INSTRUCTOR
	WHERE city='Toronto';
	
UPDATE INSTRUCTOR
SET city='Markham'
WHERE lastname='Ahuja';

DELETE FROM INSTRUCTOR
WHERE lastname='Chong';

SELECT * FROM INSTRUCTOR
