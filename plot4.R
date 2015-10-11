data<-read.table("household_power_consumption.txt", sep = ";",skip = 66637, na.strings = "?", nrow = 2880 )
x1<-1:2880
sub_metering_1<-data[1:2880,7]
sub_metering_2<-data[1:2880,8]
sub_metering_3<-data[1:2880,9]
par(mfrow=c(2,2))
x1<-1:1440
global_active_power1<-data[1:1440,3]
x2<-1441:2880
global_active_power2<-data[1441:2880,3]
plot(x1, global_active_power1, type="l",xlim=c(0,2880),ylim=c(0,7),xlab="First & Second day")
lines(x1, global_active_power1)
par(new=TRUE)
plot(x2, global_active_power2, type="l",xlim=c(0,2880),ylim=c(0,7),xlab="First & Second day")
lines(x2, global_active_power2)

x1<-1:2880

Voltage<-data[1:2880,5]
plot(x1, Voltage, type="l")
lines(x1, Voltage)

plot(x1, sub_metering_1 , type="l",xlim=c(0,2880),ylim=c(0,35),xlab="First & Second day",ylab="Energy sub metering")
lines(x1, sub_metering_1)
par(new=TRUE)
plot(x1, sub_metering_2 , type="l",xlim=c(0,2880),ylim=c(0,35),xlab="First & Second day",ylab="Energy sub metering",col="red")
lines(x1, sub_metering_2,col="red")
par(new=TRUE)
plot(x1, sub_metering_3 , type="l",xlim=c(0,2880),ylim=c(0,35),xlab="First & Second day",ylab="Energy sub metering",col="blue")
lines(x1, sub_metering_3,col="blue")

x1<-1:1440
global_reactive_power1<-data[1:1440,4]
x2<-1441:2880
global_reactive_power2<-data[1441:2880,4]
plot(x1, global_reactive_power1, type="l",xlim=c(0,2880),ylim=c(0,0.6),xlab="First & Second day")
lines(x1, global_reactive_power1)
par(new=TRUE)
plot(x2, global_reactive_power2, type="l",xlim=c(0,2880),ylim=c(0,0.6),xlab="First & Second day")
lines(x2, global_reactive_power2)
