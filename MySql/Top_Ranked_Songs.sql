WITH hit_count AS (
    SELECT 
        trackname,
        COUNT(position) AS top_position
    FROM spotify_worldwide_daily_song_ranking
    WHERE position = 1
    GROUP BY trackname
)

SELECT 
    trackname,
    top_position
FROM hit_count
ORDER BY top_position DESC;