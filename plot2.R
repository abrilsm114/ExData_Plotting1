data <- read.table("C:/Users/asusana/Documents/household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep =";"  )
FullTimeDate <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
data <- cbind(data, FullTimeDate)
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot2.png", width=480, height=480)
with(subsetdata, plot(FullTimeDate, Global_active_power, type="l", xlab="Day", ylab="Global Active Power (kilowatts)"))
dev.off()

