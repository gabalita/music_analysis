# music_analysis

Question: 
- Spotify Unwrapped: How do music apps define the music you listen to? (example: Spotify Year Wrapped)
  Examples:
    - What are the moods of 3 artists?
    - How can we classify song moods?
      - Get data to determine 3 moods: happy, sad, workout
      - Audio Features (danceability, loudness, instrumental, energy, etc. -- you can get thresholds, understand scales more and why variables are + and -)
      - Curated "Mood" Playlists from Spotify
      - Major vs minor
      - Lyrics (sentiment analysis from Genius - how happy or sad a word is?) 
      - Determining accuracy: compare top genres that an artist is classified as? can our ML model classify an artist the same way?
      - Train with Ariane Grande, Test with Billie Eillish
      - Use the Spotify Curated Mood playlist (training data) and link it to the playlists' songs audio features to determine patterns, use these patterns to classify other songs or artists' songs (make sure we have enough training data for each mood)
    - Can our Machine Learning algorithm classify moods or the genre?
    
Sources of Data:
- Kaggle (Apple's API)
- Spotify API
- Music Match API
- Music Catalogue
- Soundcloud API

Database:
- SQLite
- 
![iOS.png](Image from iOS/iOS.png)

We will pull raw data from Spotify and Apple datasets to create a combined dataset to analyze data of the playlists, albums, artists, and tracks. Data will be filtered utilizing the artist_id, album_id, playlist_id, and track_id as primary keys, to help determine the moods sad, happy, and workout. 

Machine Learning ideas:
1. song features --> classify song's mood
2. song features --> classify song's genre
3. people clustering 

Next steps: 
- Draft out readme
  - Database - what data? 
  - Machine Learning Model?


Presentation
Content
Team members have drafted their project, including the following:
✓ Selected topic
✓ Reason why they selected their topic 
✓ Description of their source of data
✓ Questions they hope to answer with the data

Main Branch
✓ Description of the communication protocols
Individual Branches
✓ At least one branch for each team member


Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
✓ Takes in data in from the provisional database
✓ Outputs label(s) for input data
- sentences telling us what we want to predict and how


Team members present a provisional database that stands in for the final database and accomplishes the following:
✓ Sample data that mimics the expected final database structure or schema
✓ Draft machine learning module is connected to the provisional database
- 

- understand where numbers come from




