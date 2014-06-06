## Function to download, unzip the data

	dataDownload<-function(dir,zipfileurl) {
				setwd(dir)
				download.file(zipfileurl,destfile="dataDownload.zip")
				unzip("dataDownload.zip")
				files <-  list.files()
				files[grep("household_power_consumption.txt", files, fixed=T)]				
		}
	
	