## Read in massive CSV file and subset by two dates of interested
data=read.csv('household_power_consumption.txt',sep=';',stringsAsFactors=FALSE)
sub_data<-subset(data,(data$Date=='1/2/2007'| data$Date=='2/2/2007'))

##Convert first column (Date) to Date format
sub_data$Date=as.Date(sub_data$Date,format='%d/%m/%Y')

## Append date and time
tmp=paste(sub_data$Date,sub_data$Time)
## convert to time format
time<- strptime(test, "%Y-%m-%d %H:%M:%S")
## plot
plot(time,sub_data$Global_active_power,type='l',ylab='Global Active Power (killowatts)',xlab='')

