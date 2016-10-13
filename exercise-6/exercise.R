# Exercise 6: Popular Baby Names Over Time
setwd("~/College/UW/INFO201/m8-dataframes/exercise-6/data")
# Read in the female baby names csv file into a variable called `female.names`
female.names <- read.csv('female_names.csv', stringsAsFactors = FALSE)

# Create a vector `year` as the year column of the dataset
year <- c(female.names$year)

# Create a vector `name` as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector
name <- c(female.names$name)

# Create a vector `prop` as the proportion column of the dataset
prop <- c(female.names$prop)

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- c(female.names$year == 2013)

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013 <- c(female.names[female.names$year == 2013, 'prop'])

# What was the most popular female name in 2013?
female.names[female.names$prop == max(prop.2013), 'name']

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(my.year) {
  my.prop <- c(female.names[female.names$year == my.year, 'prop'])
  return(female.names[female.names$prop == max(my.prop), 'name'])
}

# What was the most popular female name in 1994?
MostPopular(1994)

# For my own curiosity :)
MostPopular(1997)

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
# HowPopular <- function()
# How popular was the name 'Laura' in 1995