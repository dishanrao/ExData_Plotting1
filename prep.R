#prep-file
preparedata<-function()
{
  cls= c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
  tbl=read.table("household_power_consumption.txt", sep=";",na.strings="?",colClasses=cls,header=TRUE) 
  tbl=tbl[(tbl$Date=="1/2/2007")|(tbl$Date=="2/2/2007"),]
  tbl$DateTime=strptime(paste(tbl$Date,tbl$Time),format= "%d/%m/%Y %H:%M:%S")
  
  return(tbl)
  
}