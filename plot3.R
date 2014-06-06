	#setwd("C:/KantiOLD/courseera/DataScience/ExploratoryAnalysis/CourseProject1/data")
	
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
	
	## Generate Plot3
	par(mfrow = c(1,1))
	plot(as.POSIXct(paste(pc$Date,pc$Time)),pc$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
	lines(as.POSIXct(paste(pc$Date,pc$Time)),pc$Sub_metering_2,type="l",col="red")
	lines(as.POSIXct(paste(pc$Date,pc$Time)),pc$Sub_metering_3,type="l",col="blue")
	legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1),pt.cex=1.25,cex=0.75)
	dev.copy(png, file = "plot3.png",width = 480, height = 480) ## Copy plot3 to a PNG file
	dev.off()
	
	