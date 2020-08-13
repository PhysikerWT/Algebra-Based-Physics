setwd("C:/Users/Colby/OneDrive/Documents/GitHub/Algebra-Based-Physics/unit_01_fundamentals")

# Storing variables uses the assignment operator <-
# For instance to store the age of R we would do the following

rAge <- 27

# Variable names should be descriptive enough that you might
# guess what they represent without reading the code.

# You can also store multiple values in a single vector

time <- c(0,1,2,3,4,5,6,7,8,9,10)

# You can also do general math calculations with numbers or variables

3 * 21
2 * rAge

# You can extract information from a vector by using []

time[3]

# You can apply math to an entire vector

doubleTime <- time * 2

# You can plot by using plot(x,y)

plot(time,doubleTime)

# Make it a line chart by usint type = "l"

plot(time, doubleTime, type="l")

# Challenge Time!

x <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(2, 3, 6, 11, 18, 27, 38, 51, 66, 83, 102)

plot(x,y, type="l")




