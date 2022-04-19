use codeup_test_db;

select * from albums;

UPDATE albums a
SET sales = (sales * 10);

select * from albums;

select * from albums
where release_date < 1980;

UPDATE albums a
SET release_date = (release_date - 100)
WHERE release_date < 1980;

select * from albums a
WHERE release_date < 1980;

select * from albums
where artist = 'Michael Jackson';

UPDATE albums a
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson'

select * from albums
where artist = 'Michael Jackson' OR artist ='Peter Jackson';





