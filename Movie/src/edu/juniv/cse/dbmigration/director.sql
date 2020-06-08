CREATE TABLE IF NOT EXISTS director (
  Director_ID       varchar(45) PRIMARY KEY UNIQUE NOT NULL,
  Director_Name     varchar(50) DEFAULT NULL,
  Email_ID          varchar(40) UNIQUE DEFAULT NULL
);