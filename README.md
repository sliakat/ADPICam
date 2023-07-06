ADPICam
=============
An [EPICS](http://www.aps.anl.gov/epics/) [areaDetector](https://github.com/areaDetector/areaDetector/blob/master/README.md) 
driver for Cameras from Princeton Instruments that support the PICAM library.  

[PICam Programmer's Manual](https://www.princetoninstruments.com/wp-content/uploads/2022/02/PICAM-5.x-Programmers-Manual-Issue-8-4411-0161-3.pdf)

This driver is based on the PICAM Virtual Camera Library. It runs on 64 bit Windows (7, 8, 10) and 64 bit linux. Detectors supported by the vendor PICAM driver library include:
* BLAZE
* Lansis
* PI-MAX3
* PI-MAX4, PI-MAX4:RF, PI-MAX4:EM
* PI-MTE3
* PIoNIR, NIRvana, NIRvana-HS, NIRvana-LN
* PIXIS, PIXIS-XB, PIXIS-XF, PIXIS-XO
* ProEM-HS, ProEM, ProEM+
* PyLoN, PyLoN-IR
* Quad-RO (not supported in the Linux SDK)
* SOPHIA

This detector has been tested with Pixis, ProEM-HS, Blaze, SOPHIA, PI-MET3, and Quad-RO cameras. Virutal demo models have also been tested. Most notably missing from the library so far are the Pulse and Modulation Parameters used mostly in the 
PI-MAX3 & 4 cameras.     

### Building on Linux

ADPICam has been built on RHEL 8 and CentOS 7, and tested with a PI-MTE3 detector on RHEL 8.

It has also been built on Ubuntu 22.04LTS (kernel 5.19.0-46-generic), with PICam SDK version 5.13.3.2211 and tested with Pixis, ProEM-HS, Blaze, and SOPHIA cameras.
**
/Ubuntu 22.04 LTS specific notes
For proper operation of USB and USB3 detectors with Ubuntu 22.04LTS, libusb needs to be downgraded to 1.0.23
To downgrade:
  - check installed version with ```apt-cache policy libusb-1.0*```
  - LTS22.04 should have 2:1.0.25-1ubuntu2 by default
  - uninstall libusb with ```apt remove libusb-1.0-0```
  - may also need to remove dev and doc packages if those are installed
  - download 1.0.23's deb package from here: ```https://ubuntu.pkgs.org/20.04/ubuntu-main-amd64/libusb-1.0-0_1.0.23-2build1_amd64.deb.html```
  - install with ```apt install ./libusb-1.0-0_1.0.23-2build1_amd64.deb```

```apt-cache policy libusb-1.0*``` should now show 2:1.0.23-2build1 is now installed
  
to keep libusb downgraded, mark libusb-1.0-0 for hold on apt -- that will allow you to upgrade everything else while freezing libusb:
```
  sudo apt-mark hold libusb-1.0-0
```
\Ubuntu 22.04 LTS specific notes
**

Before building ADPICam on linux, you must first install the PICam SDK from Princeton Instruments (https://cdn.princetoninstruments.com/picam/picam_sdk.run):

```
sudo bash picam_sdk.run
```

This should install libraries into `/opt/pleora` and `/opt/PrincetonInstrumnets`, along with some links in `/usr/local/lib`. To build ADPICam you will need to add read permissions to these locations to the specified user, or build and run as root. Additionally, make sure that /usr/local/lib is in your system library search path:

```
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
```

From there, you can build with

```
make
```

Additional information:
* [Documentation](https://areaDetector.github.io/areaDetector/ADPICam/PICamDoc.html).
* [Release notes and links to source and binary releases](RELEASE.md).
