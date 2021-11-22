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
6. Scroll below for further explanation of Machine Learning methodology. 
- Bonus: Additional lyric analysis can be used to determine a song's relative sadness or happiness.



<img width="750" alt="Happy Hits Playlist on Spotify" src="https://user-images.githubusercontent.com/10199828/140940484-7599fefe-f48d-48a6-8859-eea7f8a3e647.png">





## Data and Database
**Database:**
- Our data will be stored with SQlite. 
- We will pull raw data from Spotify and Apple datasets to create a combined dataset to analyze data of the playlists, albums, artists, and tracks. Data will be filtered utilizing the artist_id, album_id, playlist_id, and track_id as primary keys, to help determine the moods sad, happy, and workout. 
- Below is our ERD: 
<img width="960" alt="ERD" src="https://user-images.githubusercontent.com/10199828/140937401-3d4853ee-4034-4031-a8de-7cb24cbc19ac.png">

<!-- 
<hr style="width:50%;text-align:left;margin-left:0"> -->

## Machine Learning Explanation 

Since this project focused on predicting the moods of songs, which was a category predictor, the machine learning models selected were Logistic regression model, Random Forest and Decision Tree. Initially, the provisional machine models were created and trained by a limited dataset, which only contained 5331 records. And they were going to fit and predict a big data while the database built completely.

The predictor 'Mood' contained three different categories as 'Happy', 'Workout' and 'Sad'. Due to the limitation of initial dataset, there were two different attempts for machine learning modesls.

The first attempt was to train these three models directly by the initial dataset. Among these model, the best one was Random Forest with accuracy about 80%.  
<!-- ![Confusion Matrix of Random Forest](https://github.com/gabalita/music_analysis/blob/Baiyang/image/Random_Forest_3.png?raw=true)   -->
<img width="350" alt="ERD" src="https://github.com/gabalita/music_analysis/blob/Baiyang/image/Random_Forest_3.png?raw=true">


To improve the machine learning model, two strategies were used to modify the initial dataset. The first one was to remove the feature 'Loudness' which was high correlated with 'Energy'. In other words, these two variables represented the same character of a song. The second strategy was to balance the initial dataset. The percentages of each mood as'Happy', 'Workout' and 'Sad' were 12.6%, 21.9% and 65.5% respectively. It was obvious that 'Sad' occupied more proportion than others. A naive method to balance the proportion was to reduce the size of 'Sad'. But this idea was not suggested and it caused a much lower accuracy of machine learning models. Therefore, the way to keep balance was to combine 'Happy' and 'Workout' as one category since their songs had similar characters' performance.

The second attempt was to train these three models by the modified dataset which only had 'Sad' and 'Happy' and their proportions were 65.5% and 34.5% respectivelt. The best accurate model was still "Random Forest" with accuracy about 88%.  
<!-- ![Confusion Matrix of Random Forest](https://github.com/gabalita/music_analysis/blob/Baiyang/image/Random_Forest_2.png?raw=true)   -->
<img width="350" alt="ERD" src="https://github.com/gabalita/music_analysis/blob/Baiyang/image/Random_Forest_2.png?raw=true">

After that, adaboost was also used to find the learning rate and its corresponding accuracy.  
<!-- ![adaboost](https://github.com/gabalita/music_analysis/blob/Baiyang/image/Adaboost.png?raw=true)   -->
<img width="350" alt="ERD" src="https://github.com/gabalita/music_analysis/blob/Baiyang/image/Adaboost.png?raw=true">

Also, the Random Forest always performed the best among these model during several attempts. Only once did the Decision Tree have better accurancy than Random Forest (when we reduced the size of 'Sad'). This was because Random Forest performed better than Decision Tree on big data situation.

The next step was going to train these models with the final dataset while the database was built completely.






