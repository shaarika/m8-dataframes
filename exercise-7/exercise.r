
# Exercise 7: Husky Football 2015 Season
setwd("~Documents/College/UW/INFO201/m8-dataframes/exercise-7/data")
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv("huskies_2015.csv")

# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- c(husky.games.2015$opponent)
print(not.huskies)

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- c(husky.games.2015$uw_score)

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- c(husky.games.2015$rushing_yards)
passing.yards <- c(husky.games.2015$passing_yards)

# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
husky.games.2015$combined.yards <- c(husky.games.2015$rushing_yards + husky.games.2015$passing_yards)

# What is the score of the game where the Huskies had the most combined yards?
max(husky.games.2015$combined.yards)

# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function(games) {
  
  return("In the game against ", opponent, " on " , date, ", the Huskies scored " , husky.scores ," points,")
}

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
husky.games.2016 <- read.csv("huskies_2016.csv")
season.yardage <- sum(husky.games.2016$rushing_yards + husky.games.2016$passing_yards)

