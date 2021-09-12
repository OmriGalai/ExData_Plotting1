png("plot4.png",width = 480, height = 480)
# sets layout
par(mfrow = c(2,2))
# top left
with(df1,plot(datetime,Global_active_power,type='l',xlab = "",ylab = "Global Active Power"))
# top right
with(df1,plot(datetime,Voltage,type='l',xlab = "datetime",ylab = "Voltage"))
# bottom left
with(df1, plot(datetime, Sub_metering_1,xlab = "", ylab = "Energy sub metering",type = "n"))
points(df1$datetime, df1$Sub_metering_1,col = "black" , type = "l")
points(df1$datetime, df1$Sub_metering_2,col = "red" , type = "l")
points(df1$datetime, df1$Sub_metering_3,col = "blue" , type = "l")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col = c("black","red","blue"))
# bottom right
with(df1,plot(datetime,Global_reactive_power,xlab = "datetime",ylab = "Global_reactive_power",type = "l"))
dev.off()
     
