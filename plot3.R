raw <- read.csv("data.txt", sep = ";", na.strings = c("?"))
data <- raw[raw$Date %in% c("1/2/2007", "2/2/2007"),]
data$Datetime = as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

png("plot3.png")

plot(data$Datetime, data$Sub_metering_1, type = "l", xlab = "",
     ylab = "Energy sub metering")
lines(data$Datetime, data$Sub_metering_2, col = "red")
lines(data$Datetime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = c(1, 1, 1))

dev.off()
