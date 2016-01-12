raw <- read.csv("data.txt", sep = ";", na.strings = c("?"))
data <- raw[raw$Date %in% c("1/2/2007", "2/2/2007"),]

png("plot1.png")

hist(data$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")

dev.off()
