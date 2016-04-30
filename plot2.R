# Plots the second plot in the exercise
# 
# Author: Tejaswi Redkar
###############################################################################

#Start clean by deleting all the environment variables
rm(list=ls(all=TRUE)) 
# Set the working directory to where the R file is and where the download and output files will be located.
setwd("/Users/Tej/Documents/ExData_Plotting1")
#Load the routine that was created to download the data
source("downloaddata.R")

plot2 <- paste(getwd(), "/charts/plot2.png", sep = "")


  #plot
plot2chart<-function() 
{
  plot(electricpowerds$Time, electricpowerds$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  print(paste("Created chart ", plot2, sep=""))
}

plot2PDF<-function()
{
  #load the PNG device
  png("charts/plot2.png", width = 480, height = 480)
  plot2chart()
  dev.off()
}
	
#plot to PDF
plot2PDF()
#plot to default device
plot2chart()