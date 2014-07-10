# Get the data
source('get_data.r')

png(filename = "plot1.png", width = 480, height = 480)
hist(used_data$Global_active_power, xlab = 'Global Active Power (kilowatts)', col='red', las=0, main="Global Active Power")
dev.off()