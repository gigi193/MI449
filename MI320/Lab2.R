# last updated: 1/19/2022
# author: Gergana Yordanova
# description: code for week 2 Lab

#Question 1 
vec <- seq(from=5, to=-11, by=-0.3)
length(vec)
vec

#Question 2
y <- rep(x=c(-1,3,-5,7,-9), times=2, each=10)
sort(y, decreasing=TRUE)

#Question 3 
v <- c(y[1],length(y))

#Question 4
v <- c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)

#Question 5
v < 6
v >= 6

#Question 6
v[which(v<(6+2))]
v[which(v!=6)]

#Question 7
v[(v > 5) | (v < 2)]

#Question 8
source("Lab2_driving_date.R") 
dim(driving)
#87 rows, 8 columns

str(driving)
#numbers: duration_min, avg_mpg , hard_accel, hard_brake
#strings: date, start_time, end_time, distance_mi

#Question 9 ?
driving[80,5]
#driving$duration_min[80]

#Question 10 
View(driving)
dist <- c(driving$distance_mi[53],driving$distance_mi[55],driving$distance_mi[56],driving$distance_mi[59],driving$distance_mi[65])

#Question 11
driving$hard_brake

#Question 12
#a factor
date_factor <- factor(driving$date)
driving$date <- date_factor

#b
driving$hard_accel <- as.logical(driving$hard_accel)
driving$hard_accel

driving$hard_brake <- as.logical(driving$hard_brake)
driving$hard_brake

#Question 13
#a
driving[(driving$hard_accel==1)&(driving$hard_brake==1),]

#b
driving[driving$distance_mi>10,]

#c
driving[(driving$distance_mi<3) & (driving$duration_min>5),]

#d new variable
driving$avg_mpg_over20 <- (driving$avg_mpg >20)



