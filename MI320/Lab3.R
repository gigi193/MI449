# last updated: 1/25/22
# author: Gergana Yordanova
# description: code for lab 3

#Question 1
library(tidyverse)

#Question 2
install.packages("palmerpenguins") 
library(palmerpenguins) 
?penguins 
glimpse(penguins)

#Question 3
#There are 344 rows and 8 columns

#Question 4
#The island variable describes a factor denoting island in 
#Palmer Archipelago, Antarctica (Biscoe, Dream or Torgersen)

#Question 5
#The variables that are categorical are species, island, sex because they are non-numerical values
#The variables that are continuous are bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g, and year because they are any value, up to any number of decimal places

#Question 6
ggplot(data = penguins) +  
  geom_point(mapping = aes(x = flipper_length_mm, y = bill_length_mm))
#It uses a continuous data set 
#The variable on the x-axis should be flipper_length_mm
#The variable on the y-axis should be bill_length_mm
#The graph should look like image A 

#Question 7
ggplot(data = penguins) +  
  geom_point(mapping = aes(x = flipper_length_mm, y = bill_length_mm), color="blue")

#Question 9
#Yes, it looks like there is a pattern that indicates a relationship.
#The pattern could be described as a positive correlation between how long the flipper length is in mm compared to the bill length in mm
#The possible relationship could be the longer the flipper length the longer the bill length

#Question 10
ggplot(data = penguins) +  
  geom_bar(mapping = aes(x = species))
#The image that the graph represents is image C

#Question 11
ggplot(data = penguins) +  
  geom_bar(mapping = aes(x = species), fill="blue")

#Question 12 
ggplot(data = penguins) +  
  geom_bar(mapping = aes(x = species, fill = island)) 

#Question 13
ggplot(data = penguins) +  
  geom_bar(mapping = aes(x = species, fill = island),position = "dodge")
#Biscoe and Dream are live on multiple islands

#Question 14 
ggplot(data = penguins) +  
  geom_point(mapping = aes(x = species, y = sex))

#Question 15
ggplot(data = penguins) +  
  geom_bar(mapping = aes(x = species, fill = sex), position="dodge") 

#Question 16 
#The scatter plot of species and sex is not useful because it doesn't show where they are from, just their gender which is almost 50/50 in some cases.
#The bar chart could be more useful by measuring where they are from or other distinguishable characteristics

#Question 17 
ggplot(data = penguins) +  
  geom_point(mapping = aes(x = species, y = sex), position = "jitter")

#Question 18
#The position = "jitter mapped out different overlapping data points and created a scatter plot looking like data set 

#Question 19 
data1 <- read_csv("Lab3_jobs.csv")

#Question 20
#The object I created is a tibble and I know this because it has a column specification saying what type it is and only displays the number of rows and columns

#Question 21
is.factor(data1$occupation)
#FALSE
#No, it is not a factor and I know this by checking it with the function is.factor that returns true or false depending if its a factor or not


#Question 22
#The two main differences are how it prints and how it is indexed