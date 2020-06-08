CREATE TABLE IF NOT EXISTS story_writer (
  Writer_ID     varchar(45) PRIMARY KEY UNIQUE NOT NULL,
  Writer_Name   varchar(50) DEFAULT NULL,
  Wr-Email_ID   varchar(40) UNIQUE DEFAULT NULL
);