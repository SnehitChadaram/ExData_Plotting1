data<-read.table("household_power_consumption.txt", sep = ";",skip = 66637, na.strings = "?", nrow = 2880 )
global_active_power<-data[1:2880,3]
hist(global_active_power)
hist(global_active_power, col="red", xlab = "Global Active Power (kilowatts)")