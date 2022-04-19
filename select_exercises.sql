use codeup_test_db;

Select 'The name of all albums by Pink Floyd.' as caption, a.* from albums a WHERE artist = 'Pink Floyd';

Select  'Year SGT Peppers... band was released' as caption, release_date from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select 'genre for Nevermind' as caption, genre
from albums
where name = 'Nevermind';

select 'albums were released in the 1990s' as caption, a.*
from albums a
where release_date between 1990 and 1999;

select 'less than 20 mil certified sales' as caption, name
from albums a
where sales < 20;

select 'rock albums' as caption, a.*
from albums a
where genre like '%Rock%';