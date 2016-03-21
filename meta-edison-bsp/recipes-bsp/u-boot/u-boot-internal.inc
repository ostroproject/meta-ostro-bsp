COMPATIBLE_MACHINE = "edison"

PV = "2015.10"
S = "${WORKDIR}/git"

PACKAGE_ARCH = "${MACHINE_ARCH}"

DEPENDS += "dtc-native"

SRC_URI = "git://github.com/01org/edison-u-boot.git;branch=edison-v2015.10;protocol=git"
SRC_URI += "${@'file://${MACHINE}.env' if '${MACHINE}' in ('edison',) else ''}"
SRC_URI += "file://target_env/"
SRC_URI += "file://0001-Fix-missing-stdint.h-include.patch"
SRCREV = "2e2b030bc6ed039b3b27225ee3486bd5b5d9f5a4"
