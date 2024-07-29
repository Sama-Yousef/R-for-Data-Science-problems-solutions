#Brainstorm as many ways as possible to select dep_time, dep_delay, arr_time, and arr_delay from flights.

Brainstorm <- select(flights, dep_time, dep_delay, arr_time,arr_delay)

#What happens if you include the name of a variable multiple times in a select() call?

variable_multiple_times <- select(flights, dep_time,dep_time)

# it will display only one of them and ignore the others 

#What does the any_of() function do? Why might it be helpful in conjunction with this vector?

vars <- c("year", "month", "day", "dep_delay", "arr_delay")
conjunction_with_anyof <- select(flights, any_of(vars))


# the result of running the following code surprise you? How do the select helpers deal with case by default? How can you change that default?
select(flights, contains("Delay"))  



