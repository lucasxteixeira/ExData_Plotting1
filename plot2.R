data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings=c("?"), colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

data <- data[ which( data$Date == "1/2/2007" | data$Date == "2/2/2007" ), ]
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- strptime(data$DateTime, format = "%d/%m/%Y %H:%M:%S")

png('plot2.png')
plot( data$DateTime, data$Global_active_power, type='l', xlab="", ylab="Global Active Power (kilowatts)")
dev.off()