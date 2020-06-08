CREATE TABLE IF NOT EXISTS screenplay_writer (
  Screenwriter_ID       varchar(45) PRIMARY KEY UNIQUE NOT NULL,
  Screenwriter_Name     varchar(50) DEFAULT NULL,
  Scr-Email_ID          varchar(40) UNIQUE DEFAULT NULL
);