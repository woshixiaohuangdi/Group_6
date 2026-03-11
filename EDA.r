df <- read.csv("C:/Users/3085988J/Desktop/Data Analysis Skills/project_2/dataset06.csv")
str(df)
summary(df)

df <- na.omit(df)
table(df$genre)

df$high_rating <- ifelse(df$rating > 7,1,0)
table(df$high_rating)

df$log_votes <- log(df$votes)

write.csv(df, "C:/Users/3085988J/Desktop/Data Analysis Skills/project_2/Group_6_Data_1.csv", row.names = FALSE)

library(ggplot2)

ggplot(df, aes(x = genre, fill = factor(high_rating))) + 
  geom_bar(position = "fill") + 
  labs(title = "Proportion of High Rating by Genre", 
       x = "Genre", y = "Proportion", fill = "Rating > 7") +
  theme_minimal()

ggplot(df, aes(x = log_votes, fill = factor(high_rating))) + 
  geom_histogram(bins = 30, alpha = 0.7) + 
  labs(title = "Log(Votes) by Rating Group",
       x = "log(Votes)", fill = "Rating > 7") +
  theme_minimal()

ggplot(df, aes(x = factor(high_rating), y = length, fill = factor(high_rating))) +
  geom_boxplot() +
  scale_x_discrete(labels = c("0" = "Rating ≤ 7", "1" = "Rating > 7")) +
  labs(title = "Film Length by Rating Group", 
       x = "Rating Group", 
       y = "Length (mins)") +
  theme_minimal() +
  theme(legend.position = "none")

