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
plot(time,sub_data$Sub_metering_1,type='l',ylab='Energy sub metering',xlab='', col='black')
points(time,sub_data$Sub_metering_2,type='l', col='red')
points(time,sub_data$Sub_metering_3,type='l', col='blue')
legend("topright", lty = 1, col = c("black", "red","blue"), 
       legend = c("Sub_mettering_1", "Sub_mettering_2","Sub_mettering_3"))