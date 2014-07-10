if (!exists("data_loaded") || data_loaded!=1) {
  file <- "exdata data household_power_consumption.zip"
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",file)
  data <- read.table(unz(file, "household_power_consumption.txt"), header=TRUE, sep=";")
  used_data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
  
  # Change date type
  used_data$Date <- as.Date(used_data$Date,"%d/%m/%Y")
  used_data$Global_active_power <- as.double(as.character(used_data$Global_active_power))
  used_data$Global_reactive_power <- as.double(as.character(used_data$Global_reactive_power))
  used_data$Voltage <- as.double(as.character(used_data$Voltage))
  used_data$Sub_metering_1 <- as.double(as.character(used_data$Sub_metering_1))
  used_data$Sub_metering_2 <- as.double(as.character(used_data$Sub_metering_2))
  used_data$Sub_metering_3 <- as.double(as.character(used_data$Sub_metering_3))
  
  # Add strptime column
  x <- paste(used_data$Date, used_data$Time)
  used_data$strptime <- strptime(x, "%Y-%m-%d %H:%M:%S")
  
  data_loaded=TRUE
} else {
  print("Data already loaded")
}