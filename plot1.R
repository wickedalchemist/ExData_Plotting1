## Read in massive CSV file and subset by two dates of interested
data=read.csv('household_power_consumption.txt',sep=';',stringsAsFactors=FALSE)
sub_data<-subset(data,(data$Date=='1/2/2007'| data$Date=='2/2/2007'))

##Convert first column (Date) to Date format
sub_data$Date=as.Date(sub_data$Date,format='%d/%m/%Y')

hist(as.numeric(sub_data$Global_active_power),
     col='red',xlab='Global Active Power (kilowatts)',main='Global Active Power'