datetime <- strptime(paste(data_sub$Date, data_sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)

plot(datetime, data_sub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()