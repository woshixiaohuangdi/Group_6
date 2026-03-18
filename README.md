# Group_6
DAS_project2_Group_6
# Overview
This project looks at what factors might affect whether a film gets a high IMDb rating (above 7). We used dataset06 and carried out a full data analysis, including data cleaning, visualisation and statistical modelling.The work was done as part of the Data Analysis Skills module.
# Aim of the Project
The aim of this project is to understand which characteristics of films are related to higher ratings.
We mainly looked at:
Year of release
Film length
Budget
Number of votes
Genre
We wanted to see how these variables influence the probability that a film has a rating greater than 7.
# Data Description
The dataset used is dataset06.csv, which contains information about films from IMDb.
Each row represents one film. The main variables include:
year – year the film was released
length – duration of the film (minutes)
budget – production budget
votes – number of viewer votes
genre – type of film
rating – IMDb rating (0–10)
# Data Cleaning
Before doing the analysis, we prepared the data:Removed missing values using na.omit()
Created a new variable high_rating:
1 if rating > 7
0 if rating ≤ 7
Applied a log transformation to votes (log_votes) to reduce skewness
# Methodology
First, we carried out some exploratory data analysis (EDA) using plots to understand the relationships between variables.Then we fitted a Generalised Linear Model (GLM), specifically a logistic regression model, because the response variable (high_rating) is binary.
We fitted two models:
Model 1: without genre
Model 2: with genre
We compared the models using AIC to choose the better one.
# results
From the model results, we found that:Genre is an important factor in predicting high ratings;Budget has a positive effect (higher budget → more likely high rating);Film length seems to have a negative relationship;Number of votes was not statistically significant.Also, some genres (like Documentary and Comedy) showed a higher probability of getting high ratings compared to others.
# Repository Structure
The repository contains the following files:
dataset06.csv – original dataset
Group_6_analysis.qmd – main analysis file
Group_6_analysis.html – rendered output
README.md – project description
# Group members
Yuning Jia 3085988J
Danni Weng 3075242W
Jingyuan Niu 3154267
Ruidong Li 3107776L
