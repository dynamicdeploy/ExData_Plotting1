# Plots the fourth plot in the exercise
# 
# Author: Tejaswi Redkar
###############################################################################

#Start clean by deleting all the environment variables
rm(list=ls(all=TRUE)) 
# Set the working directory to where the R file is and where the download and output files will be located.
#setwd("/Users/Tej/Documents/ExData_Plotting1")
#Load the routine that was created to download the data
source("downloaddata.R")

plot4 <- paste(getwd(), "/plot4.png", sep = "")

#function to plot the chart
plot4chart<-function() {	
  
  par(mfrow=c(2,2))	
  plot(electricpowerds$Time, electricpowerds$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  plot(electricpowerds$Time, electricpowerds$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
  plot(electricpowerds$Time, electricpowerds$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(electricpowerds$Time, electricpowerds$Sub_metering_2, type="l", col="red")
  lines(electricpowerds$Time, electricpowerds$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  plot(electricpowerds$Time, electricpowerds$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
}
	
#function to load the PDF device and plot the chart
plot4PDF<-function()
{
  png("plot4.png", width = 480, height = 480)
  plot4chart()
  dev.off()
  
}

#plot to PDF
plot4PDF()
#plot to default device
plot4chart()

