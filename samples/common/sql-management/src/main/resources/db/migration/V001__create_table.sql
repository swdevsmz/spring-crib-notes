CREATE TABLE
 USERS
 (
  USER_ID BIGINT IDENTITY NOT NULL PRIMARY KEY,
  USER_NAME VARCHAR(50),
  VERSION_NO BIGINT DEFAULT 1
  );