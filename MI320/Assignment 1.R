# last updated: January 25, 2022
# author: Gergana Yordanova
# description: code for assignment 1

library(tidyverse)

date <- c("1/14/22", "1/14/22", "1/14/22", "1/15/22", 
          "1/15/22", "1/15/22", "1/16/22", "1/16/22", 
          "1/16/22", "1/17/22", "1/17/22", "1/17/22", 
          "1/18/22", "1/18/22", "1/18/22", "1/19/22", 
          "1/19/22", "1/19/22", "1/20/22", "1/20/22", 
          "1/20/22", "1/21/22", "1/21/22", "1/21/22", 
          "1/22/22", "1/22/22", "1/22/22", "1/23/22", 
          "1/23/22", "1/23/22", "1/24/22", "1/24/22", 
          "1/24/22", "1/25/22", "1/25/22", "1/25/22", 
          "1/26/22", "1/26/22", "1/26/22", "1/27/22", 
          "1/27/22", "1/27/22", "1/28/22", "1/28/22", 
          "1/28/22", "1/29/22", "1/29/22", "1/29/22", 
          "1/30/22", "1/30/227", "1/30/22")
date

food_type <- c("pastry", "sandwich ", "chicken and mashed potatoes", "pastry", 
               "sandwich", "chicken and mashed potatoes", "pastry", "sandwich", 
               "chicken and mashed potatoes", "french toast sticks", "sandwich", "chicken and mashed potatoes", 
               "pastry", "sandwich", "salad and chicken", "pastry", 
               "sandwich", "sandwich", "pastry", "sandwich", 
               "salad and corn and rice", "pastry", "salad and corn and rice", "chichen and rice", 
               "pastry", "sandwich", "sandwich", "pastry", 
               "sandwich", "burger", "pastry", "chinese food", 
               "soup and salad", "pastry", "soup and salad", "lasagna", 
               "pastry", "lasagna", "lasagna", "pastry", 
               "lasagna", "lasagna", "eggs", "sandwich", 
               "sandwich", "breakfast burrito", "fetuccene alfredo", "fetuccene alfredo", 
               "eggs", "fetuccene alfredo", "chinese")
food_type

drink <- c("tea", "water", "water", "tea", 
          "water", "water", "tea", "water", 
          "water", "mimosas", "water", "water", 
          "tea", "water", "water", "tea", 
          "water", "sweet tea", "tea", "water", 
          "water", "tea", "sweet tea", "water", 
          "tea", "water", "water", "tea", 
          "water", "water", "tea", "water", 
          "water", "tea", "water", "water", 
          "tea", "water", "water", "tea", 
          "water", "water", "tea", "water", 
          "water", "tea", "water", "water", 
          "tea", "water", "water")
drink

time <- c("breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner",
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner",
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner",
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner", 
          "breakfast", "lunch", "dinner",
          "breakfast", "lunch", "dinner")
time


location <- c("home", "home", "home", "home", 
              "home", "home", "home", "home", 
              "home", "resturant", "home", "home", 
              "home", "home", "home", "home", 
              "home", "home", "home", "home", 
              "home", "home", "home", "home", 
              "home", "home", "home", "home", 
              "home", "resturant", "home", "home", 
              "home", "home", "home", "home", 
              "home", "home", "home", "home", 
              "home", "home", "home", "home", 
              "home", "resturant", "home", "home", 
              "home", "home", "resturant")
location

id <- seq(from=1, to=51, by=1)
id 

date_factor <- factor(date)
date_factor

observation <- rep(x=c(1,2,3), times=17)
observation

data1 <- data.frame(id,date_factor,observation,food_type,drink,time,location)
data1

data1$water <- (data1$drink=="water") 
data1$water

glimpse(data1) 

#View(data1)


ggplot(data = data1) + 
  geom_bar(mapping = aes(x = water, fill = time))

#date <- NULL