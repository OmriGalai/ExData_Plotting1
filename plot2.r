png("plot2.png",width=480,height=480)
with(df1,plot(datetime,Global_active_power,type='l'))
title(xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

