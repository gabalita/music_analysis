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
    - Can our Machine Learning algorithm classify moods or the genre?
    
Sources of Data:
- Kaggle (Apple's API)
- Spotify API
- Music Match API
- Music Catalogue
- Soundcloud API

Database:
- SQLite

Machine Learning ideas:
1. song features --> classify song's mood
2. song features --> classify song's genre
3. people clustering 

Next steps: 
- Draft out readme
  - Database - what data? 
  - Machine Learning Model?
