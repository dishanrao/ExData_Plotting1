source("prep.R")
  tbl=preparedata()
  png(filename= "plot1.png", width = 480, height = 480 , units="px")
  with(tbl,hist(Global_active_power,xlab="GLOBAL ACTIVE POWER (kilowatts) ", col="red", main=" Global Active Power")) 
  dev.off()

