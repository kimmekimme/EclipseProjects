CREATE DATABASE IF NOT EXISTS friendTable
DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE friendTable;

INSERT INTO admin VALUES ("admin1", "{\"id\":\"admin1\", \"password\" : \"111\", \"name\" : \"admin\", \"ts\" : \"2021-06-10\"}");
INSERT INTO admin VALUES ("admin2", "{\"id\":\"admin2\", \"password\" : \"222\", \"name\" : \"admin\", \"ts\" : \"2021-06-10\"}");
INSERT INTO admin VALUES ("admin3", "{\"id\":\"admin3\", \"password\" : \"333\", \"name\" : \"admin\", \"ts\" : \"2021-06-10\"}");