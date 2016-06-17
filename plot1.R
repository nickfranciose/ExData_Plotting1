household_power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")
household_power <- household_power[household_power$Date %in% c("1/2/2007","2/2/2007") ,]

Global_active_power <- as.numeric(household_power$Global_active_power)
png("plot1.png", width=480, height=480)
hist(Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.off()