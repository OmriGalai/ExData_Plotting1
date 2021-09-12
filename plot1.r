png("plot1.png",width=480,height=480)
hist(as.numeric(df$Global_active_power),col="red")
par(main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()