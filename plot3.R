# Get the data
source('get_data.r')

png(filename = "plot3.png", width = 480, height = 480)
plot(used_data$strptime, used_data$Sub_metering_1, xlab="", ylab='Energy sub metering', type="n")
lines(used_data$strptime, used_data$Sub_metering_1)
lines(used_data$strptime, used_data$Sub_metering_2, col = "red")
lines(used_data$strptime, used_data$Sub_metering_3, col = "blue")
legend("topright", lwd = 2, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

