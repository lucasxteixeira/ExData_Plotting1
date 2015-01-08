data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings=c("?"), colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

data <- data[ which( data$Date == "1/2/2007" | data$Date == "2/2/2007" ), ]
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- strptime(data$DateTime, format = "%d/%m/%Y %H:%M:%S")

png('plot3.png')
plot( data$DateTime, data$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
lines( data$DateTime, data$Sub_metering_2, col="red" )
lines( data$DateTime, data$Sub_metering_3, col="blue" )
legend( "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), col=c("black","red", "blue") )
dev.off()