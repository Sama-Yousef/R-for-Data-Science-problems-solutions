# installing and preparing the packages


# install.packages("dplyr")
# install.packages("nycflights13")
# library(dplyr)
# library(nycflights13)


#How could you use arrange() to sort all missing values to the start? (Hint: use is.na()).
columns_with_na <- character()

#for loop to get the columns with na valuse
for (col in colnames(flights)) {
  if (any(is.na(flights[[col]]))) {
    columns_with_na <- c(columns_with_na, col)
  }
}


arranged_flights <- arrange( flights,desc(across(all_of(columns_with_na), ~is.na(.))))


#Sort flights to find the most delayed flights. 

the_most_delayed_flights <- arrange( flights,desc(dep_delay + arr_delay))

#Find the flights that left earliest.
left_earliest <- arrange( flights,dep_delay)

#Sort flights to find the fastest (highest speed) flights.

fastest_flights <- arrange( flights,desc(distance/ air_time))


#Which flights travelled the farthest? 

farthest <- arrange( flights,desc(distance))

#Which travelled the shortest?

farthest <- arrange( flights,distance)