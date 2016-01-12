raw <- read.csv("data.txt", sep = ";", na.strings = c("?"))
data <- raw[raw$Date %in% c("1/2/2007", "2/2/2007"),]
data$Datetime = as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

png("plot4.png")

par(mfrow = c(2, 2))

plot(data$Datetime, data$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power")

plot(data$Datetime, data$Voltage, type = "l", xlab = "datetime", 
     ylab = "Voltage")

plot(data$Datetime, data$Sub_metering_1, type = "l", xlab = "",
     ylab = "Energy sub metering")
lines(data$Datetime, data$Sub_metering_2, col = "red")
lines(data$Datetime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = c(1, 1, 1), bty = "n")

plot(data$Datetime, data$Global_reactive_power, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power")

dev.off()
