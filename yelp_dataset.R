setwd("~/Documents/NLP_project/yelp_project/yelp-star-rating-prediction")
library(rjson)

#file <- 'data/yelp_academic_dataset_business.json'
#con = file(file, "r")
#input <- readLines(con, -1L)
#business.training <- lapply(X=input,fromJSON)

#file2 <- 'data/yelp_academic_dataset_checkin.json'
#con2 = file(file2, "r")
#input <- readLines(con2, -1L)
#checkin.training <- lapply(X=input, fromJSON)

#file4 <- 'data/yelp_academic_dataset_tip.json'
#con4 = file(file4, "r")
#input <- readLines(con4, -1L)
#tip.training <- lapply(X=input, fromJSON)

#file5 <- 'data/yelp_academic_dataset_user.json'
#con5 = file(file5, "r")
#input <- readLines(con5, -1L)
#user.training <- lapply(X=input, fromJSON)

df <- unlist(business.training)
df.business <- as.matrix(df)



file3 <- 'data/yelp_academic_dataset_review.json'
con3 = file(file3, "r")
input <- readLines(con3, -1L)
review.training <- lapply(X=input, fromJSON)

# Subset the data
# Join the data
df.review <- unlist(review.training)
df.review <- as.matrix(df.review)

data_frame <- as.data.frame(review.training)
data_frame <- as.data.frame(review.training$text, review.training$stars)



## 
one_star <- 'data/one_stars_10000_reviews_counts'
two_star <- 'data/two_stars_1000_reviews_counts'
three_star <- 'data/three_stars_1000_reviews_counts'
four_star <- 'data/four_stars_1000_reviews_counts'
five_star <- 'data/five_stars_1000_reviews_counts'

one_star_csv <- "data/one_stars_10000_reviews_counts"


con5 = file(one_star_csv, "r")
input <- readLines(con5, -1L)
one.star <- lapply(X=input, fromJSON)
