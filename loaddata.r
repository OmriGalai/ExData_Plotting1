require(xlsx)
require(lubridate)
require(data.table)
# create data folder if missing
if(!file.exists("data")) {
  dir.create("data")
}
# download file
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./data/consumption.zip",method="curl")
dateDownloaded <- now()
unzip("./data/consumption.zip",exdir="./data/consumption")
file <- "./data/consumption/household_power_consumption.txt"
# reading data set
df <- fread(file)
# format Date and subsetting accordingly
df$Date <- dmy(df$Date)
df1 <- rbind(df[Date == "2007-02-01"],df[Date == "2007-02-02"])
# create combined date and time variable for future use
df1$datetime <- ymd_hms(paste(df1$Date,df1$Time))
# format numerical columns as such
df1[,3:9] <- lapply(df1[,3:9],as.numeric)
