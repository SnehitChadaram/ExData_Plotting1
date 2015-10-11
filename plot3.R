data<-read.table("household_power_consumption.txt", sep = ";",skip = 66637, na.strings = "?", nrow = 2880 )
x1<-1:2880
sub_metering_1<-data[1:2880,7]
sub_metering_2<-data[1:2880,8]
sub_metering_3<-data[1:2880,9]
plot(x1, sub_metering_1 , type="l",xlim=c(0,2880),ylim=c(0,35),xlab="First & Second day",ylab="Energy sub metering")
lines(x1, sub_metering_1)
par(new=TRUE)
plot(x1, sub_metering_2 , type="l",xlim=c(0,2880),ylim=c(0,35),xlab="First & Second day",ylab="Energy sub metering",col="red")
lines(x1, sub_metering_2,col="red")
par(new=TRUE)
plot(x1, sub_metering_3 , type="l",xlim=c(0,2880),ylim=c(0,35),xlab="First & Second day",ylab="Energy sub metering",col="blue")
lines(x1, sub_metering_3,col="blue")