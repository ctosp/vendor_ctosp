include vendor/ctosp/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/ctosp/config/BoardConfigQcom.mk
endif

include vendor/ctosp/config/BoardConfigSoong.mk
