	
	## Get working directory
		workingDir <- getwd()
		
	## Function to download the data
		source("dataDownload.R")
	## Function to load the data
		source("loadData.R")
		
	## Invoke dataDownload function to download and unzip the data file
	datafile<-dataDownload(workingDir,"http://d396qusza40orc.cloudfront.net/exdata/data/household_power_consumption.zip")
	
	## Load the data 
	
	
	pc<-loadData(datafile)
	
	## Generate Plot4
	
	par(mfrow = c(2, 2),height=480,width=480)
	plot(as.POSIXct(paste(pc$Date,pc$Time)),pc$Global_active_power,type="l",xlab="",ylab="Global Active Power")
	plot(as.POSIXct(paste(pc$Date,pc$Time)),pc$Voltage,type="l",xlab="datetime",ylab="Voltage")
	plot(as.POSIXct(paste(pc$Date,pc$Time)),pc$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
	lines(as.POSIXct(paste(pc$Date,pc$Time)),pc$Sub_metering_2,type="l",col="red")
	lines(as.POSIXct(paste(pc$Date,pc$Time)),pc$Sub_metering_3,type="l",col="blue")
	legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1),pt.cex=1.25,cex=0.75)
	plot(as.POSIXct(paste(pc$Date,pc$Time)),pc$Global_reactive_power,type="s",xlab="datetime",ylab="Global_reactive_power")
	dev.copy(png, file = "plot4.png",width = 480, height = 480) ## Copy plot4 to a PNG file
	dev.off()
	