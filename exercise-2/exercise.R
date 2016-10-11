# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
seahawks.points <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
others.points <- c(10, 9, 18, 27)

# Combine your two vectors into a dataframe
games <- data.frame(seahawks.points, others.points)

# Create a new column "diff" that is the difference in points
games$diff <- games$seahawks.points - games$others.points

# Create a new column "won" which is TRUE if the Seahawks wom

games$won <- games$diff > 0

# Create a vector of the opponents

opponents <- c("Dolphins", "RAms", '49ers', 'jets')

# Assign your dataframe rownames of their opponents
rowname(games) <- opponents
