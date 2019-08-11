plot2 <- function() {
  data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
  data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  d <- data[as.Date(data$DateTime) >= as.Date("2007-02-1") & as.Date(data$DateTime) <= as.Date("2007-02-2"), ]
  png("plot2.png")
  plot(d$DateTime, d$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
  lines(d$DateTime, d$Global_active_power)
  dev.off()
}