DESCRIPTION = "6lowpan over 802.15.4 for 802.15.4 chip on Minnow-Max"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${THISDIR}/files/COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"
PR = "r0"

inherit module

FILESEXTRAPATHS_prepend := "${THISDIR}/files/:"

SRC_URI = "file://spi-minnow-cc2520.c \
           file://spi-minnow-at86rf230.c \
           file://spi-minnow-board.c \
           file://spi-minnow-board.h \
           file://Makefile \
           file://cc2520-minnow.conf.sample \
           "

FILES_${PN} += " /usr/lib/modules-load.d/cc2520-minnow.conf.sample"

# Sample configuring file
do_install_append () {
  install -d ${D}${libdir}/modules-load.d
  install -m 0655 cc2520-minnow.conf.sample ${D}${libdir}/modules-load.d/
}

S = "${WORKDIR}"
