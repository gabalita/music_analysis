# Spotify and Apple Mood Music Analysis 

## Intro and Purpose
**Purpose of the Project:** The purpose of this project is to create a machine learning algorithm that uses Spotify and Apple Data to classify the mood of a song based on audio features. Through our data analysis, we will also perform secondary data investigations into how Spotify recommends music and classifies music according to a genre.  

**Description of Data:** The main sources of our data will be the Spotify API and Kaggle datasets where we can get Apple's Data on music. Later on in the project, we may include other data sources from Musix Match's API for lyrics data and the Soundcloud API. 

**Sources of Data:**
- Kaggle (Apple's API)
- Spotify API
- Musix Match API
- Soundcloud API

**Questions we hope to answer:**
- How can we classify song moods?
- How do music apps define the music you listen to? (example: Spotify Year Wrapped)
- What are the moods of 3 artists?
- Can we create a machine learning algorithm that classifies moods or the genre?
- Can we cluster listeners and recommend followers to user based on their primary mood of their songs? 
   
## Machine Learning Model

**Overview of ML model**
 - Input: song's audio features (danceability, instrumental, acoustic, energy, etc.) and possibly genre
 - Output: Mood Categorization (happy, sad, or workout, as an example).
 
**Basic Approach to Machine Learning**
1. Choose three distinct moods to profile. For example, happy, sad, and workout are possible options. 
2. Using Spotify's Curated Mood playlists, we can accumulate audio feature data about the songs within each labeled mood bucket. Gathering enough labeled data should not be a problem as Spotify and other users have multiple playlists devoted to different moods (see Happy Hits playlist below 👇 .) Additionally, we can query all the audio features data for each track directly from Spotify (e.g. danceability, loudness, instrumental, energy, etc.).
4. Once we have our labeled data for happy, sad, and workout moods, we can train our model. Afterwards, we can test our model on songs with known labels from other curated playlists. From this, we'll be able to determine accuracy and decide if we need to change models or if we need to add additional data.
5. Determining accuracy: Compare top genres that an artist is classified as? can our ML model classify an artist the same way?
- Bonus: Additional lyric analysis can be used to determine a song's relative sadness or happiness.


<img width="750" alt="Happy Hits Playlist on Spotify" src="https://user-images.githubusercontent.com/10199828/140940484-7599fefe-f48d-48a6-8859-eea7f8a3e647.png">





## Data and Database
**Database:**
- Our data will be stored with SQlite. 
- We will pull raw data from Spotify and Apple datasets to create a combined dataset to analyze data of the playlists, albums, artists, and tracks. Data will be filtered utilizing the artist_id, album_id, playlist_id, and track_id as primary keys, to help determine the moods sad, happy, and workout. 
- Below is our ERD: 
<img width="960" alt="ERD" src="https://user-images.githubusercontent.com/10199828/140937401-3d4853ee-4034-4031-a8de-7cb24cbc19ac.png">


<hr style="width:50%;text-align:left;margin-left:0">

**Presentation Content**
- Selected topic
- Reason why they selected their topic 
- Description of their source of data
- Questions they hope to answer with the data

**Main Branch**
- Description of the communication protocols
- Individual Branches: At least one branch for each team member

**Machine Learning Model**
Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- Takes in data in from the provisional database
- Outputs label(s) for input data
- sentences telling us what we want to predict and how

**Database**
Team members present a provisional database that stands in for the final database and accomplishes the following:
- Sample data that mimics the expected final database structure or schema
- Draft machine learning module is connected to the provisional database




