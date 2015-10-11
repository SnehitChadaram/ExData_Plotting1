data<-read.table("household_power_consumption.txt", sep = ";",skip = 66637, na.strings = "?", nrow = 2880 )
x1<-1:1440
global_active_power1<-data[1:1440,3]
x2<-1441:2880
global_active_power2<-data[1441:2880,3]
plot(x1, global_active_power1, type="l",xlim=c(0,2880),ylim=c(0,7),xlab="First & Second day")
lines(x1, global_active_power1)
par(new=TRUE)
plot(x2, global_active_power2, type="l",xlim=c(0,2880),ylim=c(0,7),xlab="First & Second day")
lines(x2, global_active_power2)