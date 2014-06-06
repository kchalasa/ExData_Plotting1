
## Function to load the data and filter the data for two dates 2007-02-01 and 2007-02-02

loadData<-function(datafile) {
		powerconsumption<-read.table(datafile,header=TRUE,sep=";",na.strings = "?",colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
		powerconsumption$Date<-as.Date(powerconsumption$Date,"%d/%m/%Y")
		
		## Estimate of data size - 2075259 * 9 * 8
		## Use this to see the file size - file.info(datafile)$size
		## object.size(powerconsumption) ## Data Frame Size
		
		powerconsumption[powerconsumption$Date=="2007-02-01" | powerconsumption$Date=="2007-02-02",]
		}