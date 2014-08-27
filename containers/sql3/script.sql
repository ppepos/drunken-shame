START TRANSACTION;
USE mysql;
CREATE TABLE sql3 (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    ua VARCHAR(200) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO sql3
(username, password, ua)
VALUES
("admin", "9*VKRk4bAJ&J4vOWnbTT", "aeFY1UN8O~&34nZmSO_P");
COMMIT;
