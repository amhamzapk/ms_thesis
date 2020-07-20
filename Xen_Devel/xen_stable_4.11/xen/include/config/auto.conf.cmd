deps_config := \
	arch/x86/Kconfig.debug \
	Kconfig.debug \
	drivers/video/Kconfig \
	drivers/pci/Kconfig \
	drivers/passthrough/Kconfig \
	drivers/cpufreq/Kconfig \
	drivers/char/Kconfig \
	drivers/acpi/Kconfig \
	drivers/Kconfig \
	common/sched/Kconfig \
	common/Kconfig \
	arch/Kconfig \
	arch/x86/Kconfig \
	scripts/Kconfig.include \
	Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(SRCARCH)" "x86"
include/config/auto.conf: FORCE
endif
ifneq "$(XEN_FULLVERSION)" "4.15-unstable"
include/config/auto.conf: FORCE
endif
ifneq "$(CC)" "gcc-7"
include/config/auto.conf: FORCE
endif
ifneq "$(LD)" "ld"
include/config/auto.conf: FORCE
endif
ifneq "$(BASEDIR)" "/home/hamza/MS_Thesis/XenDevel/xen/xen"
include/config/auto.conf: FORCE
endif
ifneq "$(XEN_HAS_CHECKPOLICY)" "y"
include/config/auto.conf: FORCE
endif
ifneq "$(XEN_HAS_BUILD_ID)" "y"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
