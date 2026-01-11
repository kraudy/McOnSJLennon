 -- Create CUSTMAST & Indexs and load 300 records -----------
 -- Program LOADCUST submits this to batch.
 -- Or you can run it interactively in iACS Run SQL Scripts

 -- 02/2024 Change CustID to char to allow alpha/numeric keys

-- 02/2024 Change CUSTID to char to allow alpha-numeric key

CREATE TABLE custmast (
    CustID CHAR(4) NOT NULL,
    Name CHAR(40) NOT NULL,
    Addr CHAR(40) NOT NULL,
    City CHAR(20) NOT NULL,
    State CHAR(2) NOT NULL,
    Zip CHAR(10) NOT NULL,
    CorpPhone CHAR(20) DEFAULT ' ',
    AcctMgr CHAR(40) DEFAULT ' ',
    AcctPhone CHAR(20) DEFAULT ' ',
    Active CHAR(1) DEFAULT 'Y',
  
  PRIMARY KEY (Custid)
)
RCDFMT CUSTMASTF;

ALTER TABLE custmast
ADD COLUMN ChgTime TIMESTAMP not null DEFAULT CURRENT_TIMESTAMP
ADD column ChgUser varchar(18) not null DEFAULT USER;