TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

PROD_NAME = PICamApp
PROD_IOC += $(PROD_NAME)

# <name>.dbd will be created from <name>Include.dbd
DBD += $(PROD_NAME).dbd
$(PROD_NAME)_DBD += PICamSupport.dbd

# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
$(PROD_NAME)_SRCS += $(PROD_NAME)_registerRecordDeviceDriver.cpp $(PROD_NAME)Main.cpp

# Add locally compiled object code
$(PROD_NAME)_LIBS += ADPICam
$(PROD_NAME)_LIBS_WIN32 += Picam

$(PROD_NAME)_SYS_LIBS_Linux += picam pida pidi picc piac PvBase GenApi_gcc40_v2_4 GCBase_gcc40_v2_4 EbTransportLayerLib EbUtilsLib PtConvertersLib PtUtilsLib PvAppUtils PvBuffer PvDevice PvGenICam PvPersistence PvSerial PvStream PvTransmitter PvVirtualDevice SimpleImagingLib log4cpp_gcc40_v2_4 MathParser_gcc40_v2_4 Log_gcc40_v2_4

include $(ADCORE)/ADApp/commonDriverMakefile

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

