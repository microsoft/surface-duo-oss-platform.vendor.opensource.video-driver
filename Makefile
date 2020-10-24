# SPDX-License-Identifier: GPL-2.0-only

# auto-detect subdirs
ifneq ($(CONFIG_ARCH_QTI_VM), y)
ifeq ($(CONFIG_ARCH_LAHAINA), y)
include $(srctree)/techpack/video/config/konavid.conf
LINUXINCLUDE    += -include $(srctree)/techpack/video/config/konavidconf.h
endif

# auto-detect subdirs
ifeq ($(CONFIG_ARCH_HOLI), y)
include $(srctree)/techpack/video/config/holivid.conf
endif

ifeq ($(CONFIG_ARCH_HOLI), y)
LINUXINCLUDE    += -include $(srctree)/techpack/video/config/holividconf.h
endif

# auto-detect subdirs
ifeq ($(CONFIG_ARCH_LITO), y)
include $(srctree)/techpack/video/config/litovid.conf
endif

ifeq ($(CONFIG_ARCH_LITO), y)
LINUXINCLUDE    += -include $(srctree)/techpack/video/config/litovidconf.h
endif
endif

# auto-detect subdirs
ifeq (y, $(findstring y, $(CONFIG_ARCH_SM8150) $(CONFIG_ARCH_SA6155) $(CONFIG_ARCH_SA8195)))
include $(srctree)/techpack/video/config/gen3autovid.conf
endif

ifeq (y, $(findstring y, $(CONFIG_ARCH_SM8150) $(CONFIG_ARCH_SA6155) $(CONFIG_ARCH_SA8195)))
LINUXINCLUDE    += -include $(srctree)/techpack/video/config/gen3autovidconf.h
endif


LINUXINCLUDE    += -I$(srctree)/techpack/video/include \
                   -I$(srctree)/techpack/video/include/uapi

USERINCLUDE     += -I$(srctree)/techpack/video/include/uapi

obj-y +=msm/
