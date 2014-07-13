source("prep.R")
tbl=preparedata()

png(filename= "plot4.png", width = 480, height = 480 , units="px")

  par(mfrow=c(2,2))
  plot(tbl[[10]],tbl[[3]],type="l",xlab="",ylab="GLobal Active Power(kilowatts)")
  plot(tbl$DateTime,tbl$Voltage,type="l",ylab="Voltage",xlab="datetime")

  plot(tbl$DateTime,tbl$Sub_metering_1,type="l",col="black", xlab="", ylab="Energy Sub Metering" )
  lines(tbl$DateTime,tbl$Sub_metering_2,col="red")
  lines(tbl$DateTime,tbl$Sub_metering_3,col="blue")
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,lwd=1,cex=4/5)

  plot(tbl$DateTime,tbl$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off()
