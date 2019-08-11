plot3 <- function() {
  data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
  data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  d <- data[as.Date(data$DateTime) >= as.Date("2007-02-1") & as.Date(data$DateTime) <= as.Date("2007-02-2"), ]
  png("plot3.png")
  plot(d$DateTime, d$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
  lines(d$DateTime, d$Sub_metering_1)
  lines(d$DateTime, d$Sub_metering_2, col="red")
  lines(d$DateTime, d$Sub_metering_3, col="blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col = c("black", "red", "blue"))
  dev.off()
}