CREATE DATABASE assign3;

USE assign3;

CREATE TABLE suppliers(sid INT NOT NULL UNIQUE, sname VARCHAR(20), city VARCHAR(20), PRIMARY KEY(sid));

CREATE TABLE parts(pid INTEGER NOT NULL UNIQUE, pname VARCHAR(20), color VARCHAR(20), PRIMARY KEY (pid));

CREATE TABLE catalog(sid INTEGER NOT NULL UNIQUE PRIMARY KEY, pid INTEGER NOT NULL UNIQUE ,cost REAL NOT NULL);

ALTER TABLE catalog 
DROP INDEX `sid` ;
ALTER TABLE catalog 
DROP INDEX `pid` ;

ALTER TABLE catalog 
DROP PRIMARY KEY;
INSERT INTO suppliers VALUES(1,'Mohan Sharma', 'Dispur');
INSERT INTO suppliers VALUES(2, 'Mohit Chouhan','Bombay');
INSERT INTO suppliers VALUES(3, 'Rajnikanth','Delhi');
INSERT INTO suppliers VALUES(4,'Kumar Sanu','Kolkata');
INSERT INTO suppliers VALUES(5,'Zubeen Barua','Guwahati');
INSERT INTO suppliers VALUES(6,'Raj Kapoor','Patna');
INSERT INTO suppliers VALUES(7,'Imam Siddiquee','Agra');

INSERT INTO parts VALUES(1,'Cap','Red');
INSERT INTO parts VALUES(2,'Ball','Red');
INSERT INTO parts VALUES(3,'T Shirt','Green');
INSERT INTO parts VALUES(4,'Shoe','Green');
INSERT INTO parts VALUES(5,'Ribbon','Yellow');
INSERT INTO parts VALUES(6,'Earth','Blue');
INSERT INTO parts VALUES(7,'Moon','White');
INSERT INTO parts VALUES(8,'Mars','Red');

INSERT INTO catalog VALUES(1,1, 1500);
INSERT INTO catalog VALUES(1,3, 600);
INSERT INTO catalog VALUES(2,3, 800);
INSERT INTO catalog VALUES(2,4, 999);
INSERT INTO catalog VALUES(3,1,.05);
INSERT INTO catalog VALUES(3,2,.05);
INSERT INTO catalog VALUES(3,3,.05);
INSERT INTO catalog VALUES(3,4,.05);
INSERT INTO catalog VALUES(3,5,.05);
INSERT INTO catalog VALUES(3,6,9999999999);
INSERT INTO catalog VALUES(3,7,99999999);
INSERT INTO catalog VALUES(3,8,9999999999);
INSERT INTO catalog VALUES(4,5,15);
INSERT INTO catalog VALUES(4,1,210);
INSERT INTO catalog VALUES(5,5,50);
INSERT INTO catalog VALUES(6,4,1200);
INSERT INTO catalog VALUES(7,1,150);

SELECT distinct sname from suppliers,parts, catalog where catalog.sid=suppliers.sid and catalog.pid=parts.pid and parts.color='Red';