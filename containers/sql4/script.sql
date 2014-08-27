START TRANSACTION;
USE mysql;
CREATE TABLE flag_table (
    id INT NOT NULL AUTO_INCREMENT,
    flag VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE habitrpg_scores (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    ua VARCHAR(200) NOT NULL,
    score INT NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO flag_table
(flag)
VALUES
("FLAG-AreYouADamnedDBAMyBrotherNiceSkeelz"),
("IAcxGtYDF%gV*oL5TPuE"),
("836U7G@y#m16i%JmBvv8"),
("c4jxDtKemUZd^cffvniK"),
("O$nv#V_LD#PeXMDF6M*B"),
("enjIF!zgU$70MABxvt5Z"),
("Fv6C#Tyyqi_Q0O%Hh@F6"),
("hbPI-Ul6tyO2Z2kpZ1RG"),
("jYx89SJ8GaWT#JF$Br_I"),
("5ifhfw_9buO@%9r9dqWz"),
("DR0M2rqXEBOGD6iOLXov"),
("B4O!DqlY!ziiaOUEYsjR"),
("Yfj8P5FsIMCP5x7z8c%d"),
("2l0Vtb3ezD$VClmn&CcS"),
("A8Au_G9Uua80#MgMMRxE"),
("o96ZadEb6%nBtQUBjGgO"),
("~oPkk9jWWGr83#R&wEsI"),
("GJ337xtjYDBXDYhgYf1!"),
("L-d4^yc#jCtQwKCx1dDI"),
("P7uvaVtF8jSZfEKZebOO"),
("pRovfAETwIowVO7Ot&Mc");

INSERT INTO habitrpg_scores
(username, score, ua)
VALUES
("scoavoux", 50, "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0"),
("tcohen", -10, "Opera"),
("mcanneill", 50, "emacs"),
("aviau", 40, "Chromium"),
("jmilou", 60, "Internet Explorer"),
("adeschamps", 40, "lynx"),
("ppepos", 9001, "Safari");

COMMIT;

