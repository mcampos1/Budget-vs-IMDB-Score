#Martin Campos 
#Revised Date: 4/23/19
library(summarytools)
movies <- read.csv(file.choose())
usa <- subset(movies, movies$country == "USA")
bud <- usa$budget
fbl <- usa$movie_facebook_likes
#Summary statistics
descr(bud)
descr(fbl)
freq(bud)
freq(fbl)
summary(lm(bud ~ fbl))
options(scipen = 5)
#Plot
plot(bud ~ fbl, 
        col = "darkgreen",
        main = "USA Movie Budgets and FaceBook Likes",
        xlab = "Movie Facebook Likes",
        ylab = "Budget ($)"
        )
abline(lm(fbl ~ bud))
#Regression Diagnostic 
par(mfrow=c(2,2))
plot(lm(bud~fbl))
par(mfrow=c(1,1))
