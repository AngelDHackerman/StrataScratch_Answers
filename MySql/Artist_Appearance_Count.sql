SELECT 
    artist,
    COUNT(position) AS total_position_count
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY total_position_count DESC;