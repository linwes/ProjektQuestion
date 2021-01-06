-- SQLite
-- DROP TABLE IF EXISTS Games;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
    email varchar(32) UNIQUE NOT NULL,
    firstname varchar(32) NOT NULL,
    lastname varchar(32) NOT NULL,
    password varchar(150) NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL);

DROP TABLE IF EXISTS admin;
CREATE TABLE IF NOT EXISTS admin (
    email varchar(32) UNIQUE NOT NULL,
    firstname varchar(32) NOT NULL,
    lastname varchar(32) NOT NULL,
    password varchar(150) NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL);

DROP TABLE IF EXISTS contributer;
CREATE TABLE IF NOT EXISTS contributer (
    email varchar(32) UNIQUE NOT NULL,
    firstname varchar(32) NOT NULL,
    lastname varchar(32) NOT NULL,
    password varchar(150) NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL);

DROP TABLE IF EXISTS question;
CREATE TABLE IF NOT EXISTS question (
    title varchar(32) NOT NULL,
    questionText varchar(500) NOT NULL,
    category varchar(32) NOT NULL,
    date DATETIME(150),
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL);

DROP TABLE IF EXISTS answer;
CREATE TABLE IF NOT EXISTS answer (
    answerText varchar(500) NOT NULL,
    questId INTEGER(5) NOT NULL,
    date DATETIME(150) ,
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL);

INSERT INTO users (email, firstname, lastname, password) VALUES
    ('h19linwe', 'Linus', 'Westerback', 'hej123'),
    ('h19kripa', 'kristoffer', 'Palmgren', 'då321'),
    ('h19simry', 'Simon', 'Rydvall', 're231'),
    ('h18votur', 'Volkan', 'Tûrrkan', 'n312');

INSERT INTO contributer (email, firstname, lastname, password) VALUES
    ('h19linwe', 'Linus', 'Westerback', 'hej123'),
    ('h19kripa', 'kristoffer', 'Palmgren', 'då321'),
    ('h19simry', 'Simon', 'Rydvall', 're231'),
    ('h18votur', 'Volkan', 'Tûrrkan', 'n312');

INSERT INTO admin (email, firstname, lastname, password) VALUES
    ('h19linwe', 'Linus', 'Westerback', 'hej123'),
    ('h19kripa', 'kristoffer', 'Palmgren', 'då321'),
    ('h19simry', 'Simon', 'Rydvall', 're231'),
    ('h18votur', 'Volkan', 'Tûrrkan', 'n312');

INSERT INTO question (title, questionText, category) VALUES
    ('fungerar', 'Fungerar detta som det ska?', 'fråga'),
    ('kanske', 'Fungerar det ska?', 'hej'),
    ('jag', 'Fungerar detta som det borde?', 'fråga');

INSERT INTO answer (answerText, questId) VALUES
    ('Ja DEt fungerar', '1'),
    ('Det kanske fungerar', '2'),
    ('Du borde fungera', '3'),
    ('Du borde fungera', '3')