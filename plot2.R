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
	
	## Generate Plot2 
	par(mfrow = c(1,1))
	plot(as.POSIXct(paste(pc$Date,pc$Time)),pc$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
	dev.copy(png, file = "plot2.png",width = 480, height = 480) ## Copy plot2 to a PNG file
	dev.off()
	
	