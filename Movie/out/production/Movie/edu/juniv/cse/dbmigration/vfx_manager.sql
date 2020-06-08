CREATE TABLE IF NOT EXISTS vfx_manager (
  Manager_ID        varchar(45) PRIMARY KEY UNIQUE NOT NULL,
  Manager_Name      varchar(50) DEFAULT NULL,
  vfx-Email_ID      varchar(40) UNIQUE DEFAULT NULL
);