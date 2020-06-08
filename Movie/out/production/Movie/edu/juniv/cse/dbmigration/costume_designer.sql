CREATE TABLE IF NOT EXISTS costume_designer (
  Designer_ID       varchar(45) PRIMARY KEY UNIQUE NOT NULL,
  Designer_Name     varchar(50) DEFAULT NULL,
  Des-Email_ID      varchar(40) UNIQUE DEFAULT NULL
);