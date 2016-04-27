FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"

# version overrides
LINUX_VERSION_corei7-64-intel-common = "4.4.3"
SRCREV_machine_corei7-64-intel-common = "1a72cec834de2c80b5563f8afbeea7664fd5ee05"
SRCREV_machine_i586-nlp-32-intel-common = "0148b3601f29b159b4f84c1478ff1859bbd48efe"

### linux-stable/linux-4.4.y backports

SRC_URI_append_intel-quark = " file://0001-sched-cgroup-Fix-cleanup-cgroup-teardown-init.patch"
SRC_URI_append_intel-corei7-64 = " file://0001-sched-cgroup-Fix-cleanup-cgroup-teardown-init.patch"
SRC_URI_append_intel-core2-32 = " file://0001-sched-cgroup-Fix-cleanup-cgroup-teardown-init.patch"

### Config "fix" fragments

# security fixes
SRC_URI_append = " file://security.cfg"
SRC_URI_append_edison = " file://security-x86.cfg"
SRC_URI_append_intel-quark = " file://security-x86.cfg"
SRC_URI_append_intel-core2-32 = " file://security-x86.cfg"
SRC_URI_append_intel-corei7-64 = " file://security-x64.cfg"
SRC_URI_append_edison = " file://edison-iptables.cfg"

### Hardware support fragments

# generic support for Broxton platform
SRC_URI_append_intel-corei7-64 = " file://broxton.cfg"

# I2C sensors
SRC_URI_append_intel-quark = " file://sensors.cfg"
SRC_URI_append_edison = " file://sensors.cfg"
SRC_URI_append_beaglebone = " file://sensors.cfg"
#  Minnow Max has I2C
SRC_URI_append_intel-corei7-64 = " file://sensors.cfg"
SRC_URI_append_intel-core2-32 = " file://sensors.cfg"

# backport MMA7455 Accel sensor driver
SRC_URI_append_intel-corei7-64 = " file://0001-iio-accel-add-Freescale-MMA7455L-MMA7456L-3-axis-acc.patch"
SRC_URI_append_intel-core2-32 = " file://0001-iio-accel-add-Freescale-MMA7455L-MMA7456L-3-axis-acc.patch"
SRC_URI_append_intel-quark = " file://0001-iio-accel-add-Freescale-MMA7455L-MMA7456L-3-axis-acc.patch"

# backport lis2dh12 Accel sensor driver
SRC_URI_append_intel-corei7-64 = " file://0001-iio-st-accel-add-support-for-lis2dh12.patch"
SRC_URI_append_intel-core2-32 = " file://0001-iio-st-accel-add-support-for-lis2dh12.patch"
SRC_URI_append_intel-quark = " file://0001-iio-st-accel-add-support-for-lis2dh12.patch"

#  BeagleBone Black enable all I2Cs
SRC_URI_append_beaglebone = " file://0001-v3.15.0-ARM-dts-am335x-boneblack-configure-i2c1-and-2.patch"

# user space SPI support
SRC_URI_append_intel-quark = " file://uspi.cfg"
SRC_URI_append_edison = " file://uspi.cfg"
SRC_URI_append_beaglebone = " file://uspi.cfg"

# IIO support
SRC_URI_append_beaglebone = " file://iio.cfg"

# NFC support and drivers
SRC_URI_append = " file://nfc.cfg"
SRC_URI_append_intel-quark = " file://nfc-spi.cfg"
SRC_URI_append_edison = " file://nfc-spi.cfg"
SRC_URI_append_beaglebone = " file://nfc-spi.cfg"
#  Minnow Max has SPI
SRC_URI_append_intel-corei7-64 = " file://nfc-spi.cfg"
SRC_URI_append_intel-quark = " file://nfc-i2c.cfg"
SRC_URI_append_edison = " file://nfc-i2c.cfg"
SRC_URI_append_beaglebone = " file://nfc-i2c.cfg"
#  Minnow Max has I2C
SRC_URI_append_intel-corei7-64 = " file://nfc-i2c.cfg"

# USB-serial interface support and drivers
SRC_URI_append = " file://usb-serial.cfg"

# USB-ethernet support and drivers for Edison
SRC_URI_append_edison = " file://edison-usb-ethernet.cfg"

# CAN-bus support and drivers
SRC_URI_append = " file://can.cfg"
SRC_URI_append_intel-quark = " file://can-spi.cfg"
SRC_URI_append_edison = " file://can-spi.cfg"
SRC_URI_append_beaglebone = " file://can-spi.cfg"
#  MinnowMax has SPI
SRC_URI_append_intel-corei7-64 = " file://can-spi.cfg"
SRC_URI_append_intel-core2-32 = " file://can-x86.cfg"
SRC_URI_append_intel-corei7-64 = " file://can-x86.cfg"

# RealTek WiFi chip used on Gigabyte GB-BXBT-3825
SRC_URI_append_intel-core2-32 = " file://wireless.cfg"
SRC_URI_append_intel-corei7-64 = " file://wireless.cfg"

# 6lowpan support
SRC_URI_append = " file://6lowpan.cfg"

# 6lowpan over 802154 support and drivers
SRC_URI_append = " file://6lowpan-802154.cfg"

# 6lowpan over Bluetooth LE support
SRC_URI_append = " file://6lowpan-btle.cfg"
SRC_URI_append_intel-quark = " file://debug-fs.cfg"

# Bluetooth and Bluetooth LE support on Galileo Gen 2
SRC_URI_append_intel-quark = " file://bluetooth.cfg"

# Galileo 2 GPIO
SRC_URI_append_intel-quark = " file://galileo2.cfg"
SRC_URI_append_intel-quark = " file://iio.cfg"

# Disable GFX console and support
SRC_URI_append_intel-core2-32 = " file://no-gfx.cfg"
SRC_URI_append_intel-corei7-64 = " file://no-gfx.cfg"

# enable usb gadget
SRC_URI_append_intel-quark = " file://usb-gadget.cfg"

KERNEL_MODULE_AUTOLOAD_append_intel-quark = " g_acm_ms"
KERNEL_MODULE_PROBECONF_append_intel-quark = " g_acm_ms"

module_conf_g_acm_ms_intel-quark = "options g_acm_ms file=/dev/mmcblk0p1 removable=1 idVendor=0x8086 idProduct=0xDEAD"

### Feature fragments

# Enable eCryptFS
SRC_URI_append = " file://ecryptfs.cfg"

# Backport ambient capabilities support
SRC_URI_append_edison = " file://0001-edison-capabilities-ambient-capabilities.patch"
SRC_URI_append_edison = " file://0002-edison-capabilities-add-a-securebit-to-disable-PR_CAP_AMBIE.patch"

# Backport AK8975 iio device name support
SRC_URI_append_edison = " file://0001-iio-ak8975-Add-device-name.patch"
