USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(

    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist CHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT,
    sales FLOAT,
    genre CHAR(200),
    PRIMARY KEY (id)

);

DESCRIBE albums;

SHOW CREATE TABLE albums;