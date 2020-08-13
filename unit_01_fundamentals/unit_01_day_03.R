setwd("C:/Users/Colby/OneDrive/Documents/GitHub/Algebra-Based-Physics/unit_01_fundamentals")

# Store data in data frames to have it all in one place
# Create a set of vectors and add them to the data frame

t <- c(1:10)

x1 <- c(1,2,4,4,6,6,7,7,7,10)
x2 <- c(0,1,1,1,4,4,4,7,7,7)
x3 <- c(1,1,3,3,5,5,7,7,9,9)
x4 <- c(10,9,8,7,6,5,4,3,2,1)

# Create a data frame using data.frame and assigning labels

runInfo <- data.frame("Time" = t, "Run1" = x1, "Run2" = x2, "Run3" = x3)

# Plot any column using $ after the name of the data frame then
# type in the name of the column. Spaces are replaced with "."

plot(runInfo$Time, runInfo$Run1, type = "l")

# If you need to add a column to the data frame do the following:

runInfo$Run4 <- x4

# Saving a data frame can be done by using write.csv
# Rnotebook prints it out, so to save go to github and to the project
# and create a new file, save as FILENAME.csv and paste in the printout

write.csv(runInfo, "example_data.csv")

# IMPORTANT use write.csv(runInfo) in rnotebook to copy and past into github


# ggplot2 has more graphing abilities.
# Load ggplot2 using the library() function

library(ggplot2)

# when using ggplot() you load the entire data set then select what you
# want plotted and add layers added to it.

ggplot(runInfo, aes(t, Run4)) +
  geom_point(color = "purple")

# To change from point to line use geom_line()

ggplot(runInfo, aes(t, Run4)) +
  geom_line(color = "purple")

# All graphs should have clear, descriptive labels.
# To add a label use labs(title, x, y)

ggplot(runInfo, aes(t, Run4)) +
  geom_line(color = "purple") +
  labs(title="Example Distance Data", x = "Time (s)", y = "Distance (m)")

# To plot multiple graphs, add more geom_line()

ggplot(runInfo) +
  geom_line(aes(t, Run1), color="red") + 
  geom_line(aes(t, Run2), color="green") + 
  geom_line(aes(t, Run3), color="blue") +
  geom_line(aes(t, Run4), color="purple") +
  labs(title = "Basic Data", x="Time (s)", y="Distance (m)")






