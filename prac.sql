CREATE TABLE WORK_IN( 
	SSN INT(11), 
	DID INT(11), 
	SINCE CHAR(100), 
CONSTRAINT SACHIN1 
FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN), 
CONSTRAINT SACHIN2
FOREIGN KEY (DID) REFERENCES DEPT (DID) 
);