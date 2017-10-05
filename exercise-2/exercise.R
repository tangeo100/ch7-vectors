# Exercise 2: Subsetting and Manipulating Vectors

# Create a vector `x` that the numbers 5,2,6,2,1,7
x <- c(5, 2, 6, 2, 1, 7)

# Create a vector `y` that has the numbers 2,3
y <- c(2, 3)

# Create a vector `z` by adding (not combining, but adding) `x` and `y` (note the recycling!)
z <- x + y

# Create a vector `first.three` that has the first three elements of `z` in it
first.three <- z[c(1:3)]

# Create a vector `small` that has the values of `z` that are less than 5
small <- z[z < 5]

# Create a vector `large` that has the values of `z` that are greater than or equal to 5
large <- z [z>= 5]

### Bonus ###

# Replace the values in `z` that are larger than 5 with the number 5
larger <- z >= 5
index <- 1
for(value in larger){
  if(value){
    z[index] <- 5
  }
  index <- index + 1
}

# Replace every other value in `z` with the number 0
other <- z <5
index <- 1
for(value in other){
  if(value){
    z[index] <- 0
  }
  index <- index + 1
}