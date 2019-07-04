#!../../bin/linux-x86_64/nxds

## You may have to change nxds to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/nxds.dbd"
nxds_registerRecordDeviceDriver pdbbase

epicsEnvSet ("STREAM_PROTOCOL_PATH", ".")

drvAsynIPPortConfigure ("XDS", "172.17.10.75:4007")
asynOctetSetInputEos("XDS",0,"\r")

## Load record instances
dbLoadRecords("db/nxds.db","BL=PINK,DEV=NXDS,PORT=XDS")

cd "${TOP}/iocBoot/${IOC}"
iocInit

var streamError 1

## Start any sequence programs
#seq sncxxx,"user=epics"
