# auto-detect subdirs
ifeq ($(CONFIG_ARCH_SDXPOORWILLS), y)
include $(srctree)/techpack/audio/config/sdxpoorwillsauto.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/sdxpoorwillsauto.conf)
endif
ifeq ($(CONFIG_ARCH_SM8150), y)
include $(srctree)/techpack/audio/config/sm8150auto.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/sm8150auto.conf)
endif
ifeq ($(CONFIG_ARCH_SDMSHRIKE), y)
include $(srctree)/techpack/audio/config/sm8150auto.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/sm8150auto.conf)
endif
ifeq ($(CONFIG_ARCH_KONA), y)
ifneq ($(filter y,$(CONFIG_SEC_X1Q_PROJECT) $(CONFIG_SEC_Y2Q_PROJECT) $(CONFIG_SEC_Z3Q_PROJECT)),)
include $(srctree)/techpack/audio/config/kona_picassoq.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/kona_picassoq.conf)
else ifneq ($(filter y,$(CONFIG_SEC_C1Q_PROJECT) $(CONFIG_SEC_C2Q_PROJECT)),)
include $(srctree)/techpack/audio/config/kona_canvasq.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/kona_canvasq.conf)
else ifneq ($(filter y,$(CONFIG_SEC_F2Q_PROJECT) $(CONFIG_SEC_WIN2Q_PROJECT)),)
include $(srctree)/techpack/audio/config/kona_f2.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/kona_f2.conf)
else ifneq ($(filter y,$(CONFIG_SEC_GTS7L_PROJECT) $(CONFIG_SEC_GTS7XL_PROJECT)),)
include $(srctree)/techpack/audio/config/kona_gts7xl.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/kona_gts7xl.conf)
else ifeq ($(CONFIG_SEC_BLOOMXQ_PROJECT), y)
include $(srctree)/techpack/audio/config/kona_bloomx.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/kona_bloomx.conf)
else ifeq ($(CONFIG_SEC_R8Q_PROJECT), y)
include $(srctree)/techpack/audio/config/kona_r8.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/kona_r8.conf)
else ifeq ($(CONFIG_SEC_VICTORY_PROJECT), y)
include $(srctree)/techpack/audio/config/kona_victory.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/kona_victory.conf)
else
include $(srctree)/techpack/audio/config/konaauto.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/konaauto.conf)
endif
endif # CONFIG_ARCH_KONA
ifeq ($(CONFIG_ARCH_LITO), y)
include $(srctree)/techpack/audio/config/litoauto.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/litoauto.conf)
endif
ifeq ($(CONFIG_ARCH_BENGAL), y)
include $(srctree)/techpack/audio/config/bengalauto.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/bengalauto.conf)
endif
ifeq ($(CONFIG_ARCH_SDM660), y)
include $(srctree)/techpack/audio/config/sdm660auto.conf
export $(shell sed 's/=.*//' $(srctree)/techpack/audio/config/sdm660auto.conf)
endif

# Use USERINCLUDE when you must reference the UAPI directories only.
USERINCLUDE     += \
                -I$(srctree)/techpack/audio/include/uapi \
                -I$(srctree)/techpack/audio/include

# Use LINUXINCLUDE when you must reference the include/ directory.
# Needed to be compatible with the O= option
LINUXINCLUDE    += \
                -I$(srctree)/techpack/audio/include/uapi \
                -I$(srctree)/techpack/audio/include

ifeq ($(CONFIG_ARCH_SDXPOORWILLS), y)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/sdxpoorwillsautoconf.h
endif
ifeq ($(CONFIG_ARCH_SM8150), y)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/sm8150autoconf.h
endif
ifeq ($(CONFIG_ARCH_SDMSHRIKE), y)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/sm8150autoconf.h
endif
ifeq ($(CONFIG_ARCH_KONA), y)
ifneq ($(filter y,$(CONFIG_SEC_X1Q_PROJECT) $(CONFIG_SEC_Y2Q_PROJECT) $(CONFIG_SEC_Z3Q_PROJECT)),)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/kona_picassoq.h
else ifneq ($(filter y,$(CONFIG_SEC_C1Q_PROJECT) $(CONFIG_SEC_C2Q_PROJECT)),)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/kona_canvasq.h
else ifneq ($(filter y,$(CONFIG_SEC_F2Q_PROJECT) $(CONFIG_SEC_WIN2Q_PROJECT)),)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/kona_f2.h
else ifneq ($(filter y,$(CONFIG_SEC_GTS7L_PROJECT) $(CONFIG_SEC_GTS7XL_PROJECT)),)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/kona_gts7xl.h
else ifeq ($(CONFIG_SEC_BLOOMXQ_PROJECT), y)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/kona_bloomx.h
else ifeq ($(CONFIG_SEC_R8Q_PROJECT), y)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/kona_r8.h
else ifeq ($(CONFIG_SEC_VICTORY_PROJECT), y)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/kona_victory.h
else
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/konaautoconf.h
endif
endif # CONFIG_ARCH_KONA
ifeq ($(CONFIG_ARCH_LITO), y)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/litoautoconf.h
endif
ifeq ($(CONFIG_ARCH_BENGAL), y)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/bengalautoconf.h
endif
ifeq ($(CONFIG_ARCH_SDM660), y)
LINUXINCLUDE    += \
                -include $(srctree)/techpack/audio/config/sdm660autoconf.h
endif
obj-y += soc/
obj-y += dsp/
obj-y += ipc/
obj-y += asoc/
