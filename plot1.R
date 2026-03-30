data_full <- read.table("ExData_Plotting1/household_power_consumption.txt", 
                        header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)

data_sub <- subset(data_full, Date %in% c("1/2/2007", "2/2/2007"))
data_sub$Global_active_power <- as.numeric(data_sub$Global_active_power)

png("plot1.png", width=480, height=480)
hist(data_sub$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()