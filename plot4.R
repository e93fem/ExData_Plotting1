# Get the data
source('get_data.r')

png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

# 1,1
plot(used_data$strptime, used_data$Global_active_power, xlab="", ylab='Global Active Power', type="n")
lines(used_data$strptime, used_data$Global_active_power)

# 1,2
plot(used_data$strptime, used_data$Voltage, xlab="datetime", ylab='Voltage', type="n")
lines(used_data$strptime, used_data$Voltage)

# 2,1
plot(used_data$strptime, used_data$Sub_metering_1, xlab="", ylab='Energy sub metering', type="n")
lines(used_data$strptime, used_data$Sub_metering_1)
lines(used_data$strptime, used_data$Sub_metering_2, col = "red")
lines(used_data$strptime, used_data$Sub_metering_3, col = "blue")
legend("topright", lwd = 2, bty="n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.95)

# 2,2
plot(used_data$strptime, used_data$Global_reactive_power, xlab="datetime", ylab='Global_reactive_power', type="n")
lines(used_data$strptime, used_data$Global_reactive_power)

dev.off()

