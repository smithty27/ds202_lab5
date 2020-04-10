acc <- read.csv("accident.csv")
head (acc)
per <- read.csv("person.csv")


#Part 1: Accident data
#1.1 are there some days of the week where more accidents happen than on others (use variable DAY_WEEK)?

d_count <- count(acc,DAY_WEEK)
d_count
d <- max(d_count)
d
#Response: Yes. As can be seen from the output, the number of accidents each day varies. The max accidents happen on Day 7 of the week.

#1.2 what time of the day do accidents happen (use variable HOUR)?
h_count <- count(acc,HOUR) 
h_count
h <- max(h_count)
h

#Response: Accidents happen through the day as can be seen in the output of h_count. The max accidents happen at the 18th hour

#1.3 what is the number of accidents with at least one drunk driver (use variable DRUNK_DR)?

drunk=subset(acc, acc$DRUNK_DR > 0 )
nrow(drunk)
# Response: Number of accidents with at least one drunk driver are 8769.
