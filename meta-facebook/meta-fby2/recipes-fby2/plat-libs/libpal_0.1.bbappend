FILESEXTRAPATHS_prepend := "${THISDIR}/files/pal:"

SRC_URI += "file://pal.c \
            file://pal.h \
            "

DEPENDS += "libbic libfby2-common libfby2-fruid libfby2-sensor"
RDEPENDS_${PN} += " libfby2-common libfby2-fruid libfby2-sensor"
LDFLAGS += " -lbic -lfby2_common -lfby2_fruid -lfby2_sensor"
PAL_WARNINGS_AS_ERRORS = "no"
