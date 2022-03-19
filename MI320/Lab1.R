# last updated: Jan 12, 2022 
# author: Gergana Yordanova
# description: code for the Week 1 Lab

#Question 8
x <- 6 
y <- 4 
x + y

#Question 9
126 * 7  
sqrt(2) 
seq(from = 1, to = 10, by = 1)

#Question 10
install.packages("tidyverse")
library(tidyverse)  
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

#Question 12
a <- 2.3
(6*a+42)/(3**(4.2-3.62))

#Question 13
x <- (32*(41/8))

#Question 14
x <- (x/2.33)
x

#Question 15
ralph <-- “Hello to you!”
#Error: unexpected input in "ralph <-- “"
#a

2ralph <- “Hello to you!” 
#Error: unexpected symbol in "2ralph"
#c

ralph3 <- “Hello to you! 
#Error: unexpected input in "ralph3 <- “"
#b
  
ralph4 <- date() 
#d

#Question 16
s <-  "How much wood could a woodchuck chuck"

#Question 17
s1 <- "if a woodchuck could chuck wood"
s <- paste(s, s1)
s

#Question 18
s2 <-"?"
s <- paste(s,s1,s2)
s

#Question 19
yes <- TRUE
no <- FALSE

#Question 20
yes + no
#1

#Question 21
yes <- as.character(yes)
no <- as.numeric(no)

#Question 22
yes + no
#Error in yes + no : non-numeric argument to binary operator
#This error happened from trying to add a character to a number

