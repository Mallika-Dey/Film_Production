CREATE TABLE IF NOT EXISTS producer (
  Producer_ID       varchar(45) PRIMARY KEY UNIQUE NOT NULL,
  Producer_Name     varchar(50) DEFAULT NULL,
  Pro-Email_ID      varchar(40) UNIQUE DEFAULT NULL
;