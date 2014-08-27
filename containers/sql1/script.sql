START TRANSACTION;
USE mysql;
CREATE TABLE sql1 (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
);
INSERT INTO sql1
(username, password)
VALUES
("admin", "O0pB_Q7CI2e9QHYoRrgT");
COMMIT;
