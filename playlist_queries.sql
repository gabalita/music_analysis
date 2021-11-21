-- Joining our raw happy playlist with our workout playlist to see how many songs both raw playlists have in common
select a.* from happy_playlist a
inner join workout_playlist b on 
	a.name = b.name 
	and a.album = b.album 
	and a.artist = b.artist
;


-- Creating CSV file showing number tracks in our happy + workout playlist combines
select name, count(*) as track_count from all_happy_playlist group by name order by track_count desc
;

-- Creating one big table that combines are happy and workout playlist and identifies the original source of the playlist
insert into all_happy_playlist
select a.*, 'happy' as playlist from happy_playlist a
union 
select b.*, 'workout' as playlist from workout_playlist b
;