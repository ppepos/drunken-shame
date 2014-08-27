START TRANSACTION;
USE mysql;
CREATE TABLE super_secret_table (
    id INT NOT NULL AUTO_INCREMENT,
    flag VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE habitrpg_scores (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    score INT NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO super_secret_table
(flag)
VALUES
("FLAG-DontYouThinkTheResultLooksReallyWeird");

INSERT INTO habitrpg_scores
(username, score)
VALUES
("scoavoux", 50),
("tcohen", -10),
("mcanneill", 50),
("aviau", 40),
("jmilou", 60),
("adeschamps", 40),
("ppepos", 9001);

COMMIT;

