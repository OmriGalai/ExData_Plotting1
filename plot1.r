png("plot1.png",width=480,height=480)
# initialize histogram withoug x-axis
hist(as.numeric(df1$Global_active_power),col="red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency",xaxt = "n")
# create x-axis with required tick marks
axis(side = 1, at = c(0,2,4,6), labels = c(0,2,4,6))
dev.off()
