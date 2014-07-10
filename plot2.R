# Get the data
source('get_data.r')

png(filename = "plot2.png", width = 480, height = 480)
plot(used_data$strptime, used_data$Global_active_power, xlab="", ylab='Global Active Power (kilowatts)', type="n")
lines(used_data$strptime, used_data$Global_active_power)
dev.off()

