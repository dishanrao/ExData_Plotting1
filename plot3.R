source("prep.R")
  tbl=preparedata()

png(filename= "plot3.png", width = 480, height = 480 , units="px")
  plot(tbl$DateTime,tbl$Sub_metering_1,type="l",col="black", xlab="", ylab="Energy Sub Metering" )
  lines(tbl$DateTime,tbl$Sub_metering_2,col="red")
  lines(tbl$DateTime,tbl$Sub_metering_3,col="blue")
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,lwd=1)
dev.off()