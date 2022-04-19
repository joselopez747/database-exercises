use codeup_test_db;

TRUNCATE albums;

INSERT INTO albums(artist, name, release_date, genre, sales)
VALUES
       ('Micheal jackson', 'thriller', 1982, 49200000, 'pop, post-disco ,funk , rock'),
       ('AC/DC', 'back in black', 1980,29500000,'Hard rock'),
       ('whitney houston', 'the bodyguard',1992,32400000,'R&B,Soul, pop,soundtrack'),
       ('meat loaf', 'bat out of hell', 1977, 21700000, 'Hard rock, glam rock, progressive rock'),
       ('eagles', 'their greatest hits', 1922, 41200000, 'country rock, soft rock folk'),
       ('pink floyd', ' the dark side of the moon', 1973, 24400000, 'progressive rock'),
       ('eagles', 'Hotel California', 1976, 31500000, ' soft rock'),
       ('bees gees',' saturday night feaver', 1977, 21600000, 'disco'),
       ('fleetwood mac', 'rumours', 1977, 27900000,'soft rock'),
       ('shania twain', 'come on over', 1997,29600000,'country pop'),
       ('led zeppelin ','led zepplin iv', 1971, 14400000, 'hard rock, heavy metal, folk rock'),
       ('micheal jackson', 'bad',1987, 21100000, 'pop, rhythm and blues funk and rock' ),
       ('alanis morissette', 'jagged little pill', 1995, 24300000, 'alternative rock'),
       ('micheal jackson', 'dangerous', 1991, 17000000, 'pop ,rhythm and blues, funk and rock'),
       ('celine dion', 'falling into you', 1996, 21100000, 'pop, soft rock'),
       ('the beatles', 'sgt. peppers lonely hearts club band', 1967,18200000,'rock')