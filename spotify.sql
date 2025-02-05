-- Top 5 Most Streamed Songs
SELECT Title, Artist, Album, Stream 
FROM spotify 
ORDER BY Stream DESC 
LIMIT 5;

-- Average Danceability per Album
SELECT Album, ROUND(AVG(Danceability)::numeric, 2) AS avg_danceability
FROM spotify
GROUP BY Album
ORDER BY avg_danceability DESC;

-- Which Song Has the Highest Energy?

SELECT Title, Artist, Album, Energy 
FROM spotify
ORDER BY Energy DESC 
LIMIT 1;


 -- Most Popular Artist by Total Views

 SELECT Artist, SUM(Views) AS total_views 
FROM spotify
GROUP BY Artist 
ORDER BY total_views DESC 
LIMIT 1;

 -- How Many Songs Are Singles vs. Album Tracks?
SELECT Album_type, COUNT(*) AS song_count
FROM spotify
GROUP BY Album_type;

 -- Songs With the Most YouTube Likes

 SELECT Title, Artist, Likes 
FROM spotify 
ORDER BY Likes DESC 
LIMIT 5;

-- Correlation Between Energy & Liveness
SELECT ROUND(CORR(Energy, Liveness):: numeric, 2) AS correlation
FROM spotify;

-- Average Duration of Songs on Spotify vs. YouTube
SELECT most_played_on ,ROUND(AVG(Duration_min)::numeric, 2) AS avg_duration
FROM spotify
GROUP BY most_played_on;

 -- Most Commented Songs
SELECT Title, Artist, Comments 
FROM spotify
ORDER BY Comments DESC 
LIMIT 5;

-- Find the Song with the Most Speechiness
SELECT Title, Artist, Speechiness 
FROM spotify
ORDER BY Speechiness DESC 
LIMIT 1;

