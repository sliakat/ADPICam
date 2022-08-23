TOP=../
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

INC += picam.h
INC += picam_advanced.h
INC += picam_em_calibration.h
INC += picam_special.h
INC += pil_platform.h

ifeq (windows-x64, $(findstring windows-x64, $(T_A)))
LIB_INSTALLS_WIN32    += ../os/windows-x64/Picam.lib
endif

ifeq (linux-x86_64, $(findstring linux-x86_64, $(T_A)))
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libpicam.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libpiac.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libpicc.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libpida.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libpidi.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvBase.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libEbTransportLayerLib.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libEbUtilsLib.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPtConvertersLib.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPtUtilsLib.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvAppUtils.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvBuffer.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvDevice.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvGenICam.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvPersistence.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvSerial.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvStream.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvTransmitter.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libPvVirtualDevice.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libSimpleImagingLib.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libGenApi_gcc40_v2_4.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libGCBase_gcc40_v2_4.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libLog_gcc40_v2_4.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/libMathParser_gcc40_v2_4.so
LIB_INSTALLS_Linux    += ../os/linux-x86_64/liblog4cpp_gcc40_v2_4.so
endif

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

