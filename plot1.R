data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings=c("?"), colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

data <- data[ which( data$Date == "1/2/2007" | data$Date == "2/2/2007" ), ]

png('plot1.png')
hist( data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)" )
dev.off()