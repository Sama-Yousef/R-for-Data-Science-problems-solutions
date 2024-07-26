# installing and preparing the packages



#an arrival delay of two or more hours
dalay_more2 <- dplyr::filter(nycflights13::flights, arr_delay>=2)


#Flew to Houston (IAH or HOU)
flew_to_Houston <- dplyr::filter(nycflights13::flights, dest== "IAH" | dest== "HOU")

#Departed in summer (July, August, and September)
departed_in_summer <- dplyr::filter(nycflights13::flights, month == 7 & month == 8 & month == 9)



#Arrived more than two hours late, but didn’t leave late
Arrived_late <- dplyr::filter(nycflights13::flights,arr_delay >=2 & dep_delay == 0)



#Were delayed by at least an hour, but made up over 30 minutes in flight
delayed <- dplyr::filter(nycflights13::flights, dep_delay >= 1 & sched_arr_time - arr_time > 30)


#Departed between midnight and 6am (inclusive)
between_midnight_and6am <- dplyr::filter(nycflights13::flights, hour >=1  &  hour < 6)







