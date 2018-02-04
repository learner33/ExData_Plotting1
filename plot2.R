data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE)
data_n <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(data_n$Date, data_n$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot2 <- as.numeric(data_n$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, plot2, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

