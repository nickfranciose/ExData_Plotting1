household_power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")
household_power <- household_power[household_power$Date %in% c("1/2/2007","2/2/2007") ,]

Sub1 <- as.numeric(household_power$Sub_metering_1)
Sub2 <- as.numeric(household_power$Sub_metering_2)
Sub3 <- as.numeric(household_power$Sub_metering_3)
datetime <- strptime(paste(household_power$Date, household_power$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot3.png", width=480, height=480)
plot(datetime, Sub1,  type="l", xlab="", ylab="Energy sub metering")
lines(datetime, Sub2, type="l", col="red")
lines(datetime, Sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()