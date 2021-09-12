require(xlsx)
require(lubridate)
require(data.table)
if(!file.exists("data")) {
  dir.create("data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./data/consumption.zip",method="curl")
dateDownloaded <- now()
unzip("./data/consumption.zip",exdir="./data/consumption")
file <- "./data/consumption/household_power_consumption.txt"
df <- fread(file)
df$Date <- dmy(df$Date)
df1 <- rbind(df[Date == "2007-02-01"],df[Date == "2007-02-02"])
