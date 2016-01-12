raw <- read.csv("data.txt", sep = ";", na.strings = c("?"))
data <- raw[raw$Date %in% c("1/2/2007", "2/2/2007"),]
data$Datetime = as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

png("plot2.png")

plot(data$Datetime, data$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")

dev.off()