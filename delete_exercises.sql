USE codeup_test_db;

select 'Albums released after 1991' as caption, a.* from albums a WHERE release_date > 1991;



# Select * from albums
# WHERE genre = 'disco';

select 'Albums with the genre '' disco'''  as caption, a.* from albums a WHERE genre = 'disco';

# select * from albums
# where artist like '%Whitney Houston%';

select 'Albums by ''Whitney Houston''' as cpation, a.* from albums a where artist like '%Whitney Houston%';

DELETE FROM albums a where release_date >1991;
DELETE FROM albums a WHERE genre = 'disco';
DELETE FROM albums a WHERE artist like '%Whitney Houston%';