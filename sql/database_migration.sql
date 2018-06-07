USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(100),
  email    VARCHAR(100),
  password VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE ads (
  id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title       VARCHAR(100),
  description TEXT,
  user_id     INT UNSIGNED          DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
  ON DELETE CASCADE
);
