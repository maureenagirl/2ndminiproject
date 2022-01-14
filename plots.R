##Fely Maureen N. Conanan
##CMSC 197 2nd Mini-Project
##Item #2

setwd("C:/Users/LENOVO/Documents/data")

###Loading dataset### 

#converting the Date and Time variables to Date/Time classes in R using the as.Date() and strptime() functions
hpc$Date<-as.Date(hpc$Date, format = "%d/%m/%Y")
hpc$Time<-strptime(paste(hpc$Date,hpc$Time),"%F %T")

#using only data from the dates 2007-02-01 and 2007-02-02.
hpc<-subset(hpc,hpc$Date %in% as.Date(c("2007-02-01","2007-02-02")))

###CReating Plots### 

##Plot 1##

par(mfrow=c(1,1),mar=c(5,4.5,4,2))
hist(hpc$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")


png("plot1.png", width=500, height=500)
par(mfrow=c(1,1),mar=c(5,4.5,4,2))
hist(hpc$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")
dev.off()

##Plot 2##

par(mfrow=c(1,1),mar=c(5,4.5,4,2))
plot(hpc$Time,hpc$Global_active_power, ylab="Global Active Power (kilowatts)", 
     xlab="", pch =".", type="l")

png("plot2.png", width=500, height=500)
par(mfrow=c(1,1),mar=c(5,4.5,4,2))
plot(hpc$Time,hpc$Global_active_power, ylab="Global Active Power (kilowatts)", 
     xlab="", pch =".", type="l")
dev.off()

##Plot 3##

par(mfrow=c(1,1),mar=c(4,4,4,2))
plot(hpc$Time,hpc$Sub_metering_1,ylab="Energy sub metering", xlab="", type="l", col="black")
points(hpc$Time,hpc$Sub_metering_2, col="red", type="l")
points(hpc$Time,hpc$Sub_metering_3, col="blue", type="l")
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=names(hpc[,7:9]))

png("plot3.png", width=480, height=480)
par(mfrow=c(1,1),mar=c(4,4,4,2))
plot(hpc$Time,hpc$Sub_metering_1,ylab="Energy sub metering", xlab="", type="l", col="black")
points(hpc$Time,hpc$Sub_metering_2, col="red", type="l")
points(hpc$Time,hpc$Sub_metering_3, col="blue", type="l")
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=names(hpc[,7:9]))
dev.off()

##Plot 4## 

par(mfcol=c(2,2), mar=c(4.5,5,2,2))
# Plot 4.1
plot(hpc$Time,hpc$Global_active_power, ylab="Global Active Power (kilowatts)", 
     xlab="", pch =".", type="l")
# Plot 4.2
plot(hpc$Time,hpc$Sub_metering_1,ylab="Energy sub metering", xlab="", type="l", col="black")
points(hpc$Time,hpc$Sub_metering_2, col="red", type="l")
points(hpc$Time,hpc$Sub_metering_3, col="blue", type="l")
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=names(hpc[,7:9]), bty="n")
# Plot 4.3
plot(hpc$Time,hpc$Voltage, ylab="Voltage", xlab="datetime", type="l")
# Plot 4.4
plot(hpc$Time,hpc$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")


png("plot4.png", width=500, height=500)
par(mfcol=c(2,2), mar=c(4.5,5,2,2))
# Plot 4.1
plot(hpc$Time,hpc$Global_active_power, ylab="Global Active Power (kilowatts)", 
     xlab="", pch =".", type="l")
# Plot 4.2
plot(hpc$Time,hpc$Sub_metering_1,ylab="Energy sub metering", xlab="", type="l", col="black")
points(hpc$Time,hpc$Sub_metering_2, col="red", type="l")
points(hpc$Time,hpc$Sub_metering_3, col="blue", type="l")
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=names(hpc[,7:9]), bty="n")
# Plot 4.3
plot(hpc$Time,hpc$Voltage, ylab="Voltage", xlab="datetime", type="l")
# Plot 4.4
plot(hpc$Time,hpc$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")
dev.off()





