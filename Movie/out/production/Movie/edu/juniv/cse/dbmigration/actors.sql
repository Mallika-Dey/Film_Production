CREATE TABLE IF NOT EXISTS actors (
  Actor_ID      varchar(45) PRIMARY KEY UNIQUE NOT NULL,
  Actor_Name    varchar(50) DEFAULT NULL,
  Act-Email_ID  varchar(40) UNIQUE DEFAULT NULL
);