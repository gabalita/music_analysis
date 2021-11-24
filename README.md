# Spotify and Apple Mood Music Analysis 

Segment 2 Summary:
We provide links to all the necessary files. Right now we're having trouble committing files to main branch, so our work is spread across different branches. We will condense and organize Github repo this coming week. 
1. Presentation: https://docs.google.com/presentation/d/1QXlsqbagmJMQYZ5z3b8W8y9wzVafMxwwkMXmu04bmEA/edit#slide=id.p
2. Database and ETL files:
- Code we used to access Spotify API and extract, clean, and load data from Jupyter Notebook to SQL: https://github.com/gabalita/music_analysis/blob/tutorial/ETL/ETL_mood_code.ipynb
- SQL queries we used to analyze the data intially:  https://github.com/gabalita/music_analysis/blob/ekta/playlist_queries.sql
3. Machine Learning: 
- Analysis of Happy, Sad, and Workout as 3 separate categories: https://github.com/gabalita/music_analysis/blob/Baiyang/notebook/Input_Data_test.ipynb
- Analysis of Happy (combination of Happy and Workout) and Sad: https://github.com/gabalita/music_analysis/blob/Baiyang/notebook/Input_Data_test_2.ipynb
4. Dashboard Blueprint
- Blueprint is on Slide 11 of Google Slides presentation (which includes the link to the Tableau Public file and description of additional visualizations in our data story)

## Intro and Purpose
**Purpose of the Project:** <br> </br>
The purpose of this project was to use Spotify data to understand what makes a song happy or sad. Using this framework, we created machine learning alogrithms that can classify songs based on their Spotify audio features. Finally, we applied our mood analysis to Spotify's 2020 Wrapped dataset to uncover mood trends in today's popular artists and songs. 


**Description of Data:** The main sources of our data will be the Spotify API where can query data on playlists and tracks. 

**Communication Protocols:** Communication within the team was done through Slack and Google Docs. 

**Sources of Data:**
- Spotify API
- Musix Match API


**Questions we hope to answer:**
- What makes a song happy versus sad?
- Which models are able to best classify a song's mood? 
- Which audio features (loudness, acousticness, etc.) are the primary features that cause a song to be happy or sad? Are there any features that aren't signficant in determing mood? 
- Using Spotify's 2020 Wrapped, what is the breakdown of sad and happy for top artists and songs? 
- How does happy v sad songs in 2020 compare to the popular songs of previous decades or generations?
   

## Data and Database
**Database:**
- Our data will be stored with SQlite. 
- We will pull raw data from Spotify and Apple datasets to create a combined dataset to analyze data of the playlists, albums, artists, and tracks. Data will be filtered utilizing the artist_id, album_id, playlist_id, and track_id as primary keys, to help determine the moods sad, happy, and workout. 
- Below is our ERD: 
<img width="750" alt="ERD" src="https://user-images.githubusercontent.com/10199828/142784885-bc429e80-a7c8-4125-837c-2cdd25bca6a2.png">

<!-- 
<hr style="width:50%;text-align:left;margin-left:0"> -->


## Machine Learning Model

**Overview of ML model**
 - Input: song's audio features (danceability, instrumental, acoustic, energy, etc.) and possibly genre
 - Output: Mood Categorization (happy, sad, or workout, as an example).
 
<!-- **Machine Learning: Basic Overview
1. Choose three distinct moods to profile. For example, happy, sad, and workout are possible options. 
2. Using Spotify's Curated Mood playlists, we can accumulate audio feature data about the songs within each labeled mood bucket. Gathering enough labeled data should not be a problem as Spotify and other users have multiple playlists devoted to different moods (see Happy Hits playlist below 👇 .) Additionally, we can query all the audio features data for each track directly from Spotify (e.g. danceability, loudness, instrumental, energy, etc.).
4. Once we have our labeled data for happy, sad, and workout moods, we can train our model. Afterwards, we can test our model on songs with known labels from other curated playlists. From this, we'll be able to determine accuracy and decide if we need to change models or if we need to add additional data.
5. Determining accuracy: Compare top genres that an artist is classified as? can our ML model classify an artist the same way?
6. Scroll below for further explanation of Machine Learning methodology. 
- Bonus: Additional lyric analysis can be used to determine a song's relative sadness or happiness.
 -->


<img width="750" alt="Happy Hits Playlist on Spotify" src="https://user-images.githubusercontent.com/10199828/140940484-7599fefe-f48d-48a6-8859-eea7f8a3e647.png">

Since this project focused on predicting the moods of songs, which was a category predictor, the machine learning models selected were Logistic regression model, Random Forest and Decision Tree. Initially, the provisional machine models were created and trained by a limited dataset, which only contained 5331 records. Then they were going to fit and predict a big data while the database built completely.

The predictor 'Mood' contained three different categories as 'Happy', 'Workout' and 'Sad'. Due to the limitation of initial dataset, there were two different attempts for machine learning models.

The first attempt was to train these three models directly by the initial dataset. Among these models, the best one was Random Forest with accuracy around 80%.  
<!-- ![Confusion Matrix of Random Forest](https://github.com/gabalita/music_analysis/blob/Baiyang/image/Random_Forest_3.png?raw=true)   -->
<img width="350" alt="ERD" src="https://github.com/gabalita/music_analysis/blob/Baiyang/image/Random_Forest_3.png?raw=true">

To improve the machine learning model, two strategies were used to modify the initial dataset. The first one was to remove the feature 'Loudness' which was highly correlated with 'Energy'. In other words, these two variables represented the same character of a song. The second strategy was to balance the initial dataset. The percentages of each mood 'Happy', 'Workout' and 'Sad' were 12.6%, 21.9% and 65.5% respectively. It was obvious that 'Sad' occupied more proportion than others. A naive method to balance the proportion was to reduce the size of 'Sad'. But this idea was not suggested and it caused a much lower accuracy of machine learning models. Therefore, the way to keep balance was to combine 'Happy' and 'Workout' as one category since their songs had similar characters' performance.

The second attempt was to train these three models by the modified dataset which only had 'Sad' and 'Happy' and their proportions were 65.5% and 34.5% respectively. The most accurate model was still "Random Forest" with accuracy around 88%.  
<!-- ![Confusion Matrix of Random Forest](https://github.com/gabalita/music_analysis/blob/Baiyang/image/Random_Forest_2.png?raw=true)   -->
<img width="350" alt="ERD" src="https://github.com/gabalita/music_analysis/blob/Baiyang/image/Random_Forest_2.png?raw=true">

Then, Adaboost was also used to find the learning rate and its corresponding accuracy.  
<!-- ![adaboost](https://github.com/gabalita/music_analysis/blob/Baiyang/image/Adaboost.png?raw=true)   -->
<img width="350" alt="ERD" src="https://github.com/gabalita/music_analysis/blob/Baiyang/image/Adaboost.png?raw=true">

Lastly, the Random Forest always performed the best among these model during several attempts. The Decision Tree model only performed better once with better accurancy than Random Forest (when we reduced the size of 'Sad'). This was because Random Forest performed better than Decision Tree on big data situation.

The next step was going to train these models with the final dataset while the database was built completely.






