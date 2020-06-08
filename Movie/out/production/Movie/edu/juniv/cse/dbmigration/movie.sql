CREATE TABLE IF NOT EXISTS movie (
  Movie_ID      varchar(50) PRIMARY KEY UNIQUE NOT NULL,
  Name          varchar(50) DEFAULT NULL,
  Duration      time DEFAULT NULL,
  Genre         varchar(35) DEFAULT NULL
);