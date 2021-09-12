png("plot3.png",width = 480, height = 480)
# create plot without showing data
with(df1, plot(datetime, Sub_metering_1,xlab = "", ylab = "Energy sub metering",type = "n"))
# add lines with specified color
points(df1$datetime, df1$Sub_metering_1,col = "black" , type = "l")
points(df1$datetime, df1$Sub_metering_2,col = "red" , type = "l")
points(df1$datetime, df1$Sub_metering_3,col = "blue" , type = "l")
# create legend
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col = c("black","red","blue"))
dev.off()
