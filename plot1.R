	
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
	
	## Generate Plot1 
	
	par(mfrow = c(1,1))
	hist(pc$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
	dev.copy(png, file = "plot1.png",width = 480, height = 480) ## Copy plot1 to a PNG file
	dev.off()
	
	