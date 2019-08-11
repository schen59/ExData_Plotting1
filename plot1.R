plot1 <- function() {
  data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  d <- data[data$Date >= as.Date("2007-02-1") & data$Date <= as.Date("2007-02-2"), ]
  png("plot1.png")
  hist(d$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
  dev.off()
}