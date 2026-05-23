library(ggplot2)
data(movies)
head(movies)
str(movies)

# Convert variables to their correct data type
#===============================================================
movies$Action <- as.factor(movies$Action)
movies$Animation <- as.factor(movies$Animation)
movies$Comedy <- as.factor(movies$Comedy)
movies$Drama <- as.factor(movies$Drama)
movies$Documentary <- as.factor(movies$Documentary)
movies$Romance <- as.factor(movies$Romance)
movies$Short <- as.factor(movies$Short)

# Create Review Column
#================================================================
movies$Review[movies$rating > 8.5] <- "Awesome"
movies$Review[movies$rating > 7.5 & movies$rating <= 8.5] <- "Good"
movies$Review[movies$rating > 5 & movies$rating <= 7.5] <- "Average"
movies$Review[movies$rating <= 5] <- "Bad"

class(movies$Review)
movies$Review <- as.factor(movies$Review)

# Top 10 & Bottom 10 movies
#=================================================================
movies$title[order(movies$rating,decreasing = TRUE)][1:10]
movies$title[order(movies$rating)][1:10]

# Best movie in each decade
#=================================================================
range(movies$year)
movies$Decade <- paste(floor(movies$year/10)*10,"'s",sep="")

movie.by.Decade <- split(movies,movies$Decade)

sapply(movie.by.Decade , function(x) x$title[x$rating==max(x$rating)])

Output <-data.frame("Best Movie" = sapply(movie.by.Decade , function(x) x$title[x$rating==max(x$rating)][1]))

# Average length  and trend
#=================================================================

mean(movies$length,na.rm=TRUE)
aggregate(x = movies$length, by = list(movies$Decade), FUN = mean)

sapply(movie.by.Decade , function(x) mean(x$length))
Length <- data.frame("Decades" = rownames(Length),"Avg Length" = sapply(movie.by.Decade , function(x) mean(x$length)))

plot(Length[,2],col = "red" ,type="b", pch =20,lwd=2,xlab ="Decades",ylab = "Average Length", main = "Trend in movie length")

# Count of genre
#==================================================================
movies.after.2000 <- movies[movies$year >=2000,]
sapply(movies.after.2000[,19:24], table )

# Movies with name "seven"
#==================================================================
grep(pattern = "seven",x = movies$title,ignore.case = TRUE,value = TRUE)

# Avg votes of awesome movies
#==================================================================
mean(movies$rating[movies$Review=="Awesome"])

# Missing value count
#=======================================================================
sapply(movies, function(x) sum(is.na(x)))
summary(movies)

# Unique title count and most common title
#=======================================================================
length(unique(movies$title))
title.freq <- data.frame(table(movies$title))
title.freq.sort <- title.freq[order(title.freq$Freq,decreasing = TRUE),]
title.freq.sort[1,]
