# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c('blue', 'red', 'white', 'green', 'yellow', 'black')

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess){
  ans <- sample(marbles, 1)
  if(ans == guess){
    return (TRUE)
  }
  return (FALSE)
}

# Play the marble game!
MarbleGame('black')

# Bonus: Play the marble game until you win, keeping track of how many tries you take

Play <- function(){
  count <- 0
  win <- FALSE
  while(!win){
    guess <- sample(marbles, 1)
    win <- MarbleGame(guess)
    count <- count + 1
  }
  return (count);
}

numGames <- Play()

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability

games <- 1000
total.tries <- 0
while(games > 0){
  total.tries <- total.tries + Play()
  games <- games - 1
}
average <- total.tries / 1000