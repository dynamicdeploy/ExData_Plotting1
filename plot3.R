# Plots the third plot in the exercise
# 
# Author: Tejaswi Redkar
###############################################################################

#Start clean by deleting all the environment variables
rm(list=ls(all=TRUE)) 
# Set the working directory to where the R file is and where the download and output files will be located.
setwd("/Users/Tej/Documents/ExData_Plotting1")
#Load the routine that was created to download the data
source("downloaddata.R")

plot3 <- paste(getwd(), "/plot3.png", sep = "")

	#function to plot the chart
plot3chart<-function() {	
	  
	  plot(electricpowerds$Time, electricpowerds$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	  lines(electricpowerds$Time, electricpowerds$Sub_metering_2, type="l", col="red")
	  lines(electricpowerds$Time, electricpowerds$Sub_metering_3, type="l", col="blue")
	  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
	}
	
	#function to load the PDF device and plot the chart
plot3PDF<-function()
	{
	  png("plot3.png", width = 480, height = 480)
	  plot3chart()
	  dev.off()
	  
	}
	
	#plot to PDF
	plot3PDF()
	#plot to default device
	plot3chart()
