#!../../bin/linux-x86_64/Switch

## You may have to change Switch to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Switch.dbd"
Switch_registerRecordDeviceDriver pdbbase
#
#drvAsynIPPortConfigure ("Switch1","10.112.45.128:111",0,0,0)
E5810Reboot ("10.112.8.70","0")
vxi11Configure ("Switch1","10.112.8.70",0,1000,"gpib0,7")

#This prints low level commands and responses
asynSetTraceMask("Switch1",7,0xFF)
asynSetTraceIOMask("Switch1",7,0xFF)






## Load record instances
#dbLoadRecords("db/xxx.db","user=zmaHost")

dbLoadRecords(db/Switch.db)



cd ${TOP}/iocBoot/${IOC}
iocInit

var mediatorVerbosity 7

var mySubDebug 7


## Start any sequence programs
#seq sncxxx,"user=zmaHost"
