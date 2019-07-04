TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = nxds
# nxds.dbd will be created and installed
DBD += nxds.dbd

# nxds.dbd will be made up from these files:
nxds_DBD += base.dbd

# Include dbd files from all support applications:
nxds_DBD += asyn.dbd
nxds_DBD += drvAsynIPPort.dbd
nxds_DBD += calc.dbd
nxds_DBD += stream-base.dbd

# Add all the support libraries needed by this IOC
nxds_LIBS += asyn
nxds_LIBS += calc
nxds_LIBS += stream

# nxds_registerRecordDeviceDriver.cpp derives from nxds.dbd
nxds_SRCS += nxds_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
nxds_SRCS_DEFAULT += nxdsMain.cpp
nxds_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#nxds_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
nxds_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
