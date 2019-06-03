# Copyright (C) 2018 CTOSP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Versioning System
# CTOSP Version.
CTOSP_VERSION_NUMBER := v2.0
CTOSP_BUILD_DATE := $(shell date -u +%d-%m-%Y)
CTOSP_DEVICE := $(CTOSP_BUILD)

ifndef CTOSP_BUILD_TYPE
    CTOSP_BUILD_TYPE := UNOFFICIAL

endif

ifndef CTOSP_MAINTAINER
    CTOSP_MAINTAINER := Unknown
endif

ifeq ($(CTOSP_BUILD_TYPE), OFFICIAL)

PRODUCT_PACKAGES += \
    CtospOTA

endif

# Set all versions
CTOSP_VERSION := CTOSPOS-$(CTOSP_VERSION_NUMBER)-$(shell date +"%Y%m%d")-Pie4-$(CTOSP_DEVICE)-$(CTOSP_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.ctosp.buildtype=$(CTOSP_BUILD_TYPE) \
    ctosp.ota.version=$(CTOSP_VERSION) \
    ro.ctosp.build.version=$(CTOSP_VERSION_NUMBER) \
    ro.CTOSPmodversion=$(CTOSP_VERSION_P) \
    ro.ctosp.version=$(CTOSP_VERSION) \
    ro.ctosp.build_date=$(CTOSP_BUILD_DATE) \
    ro.ctosp.maintainer=$(CTOSP_MAINTAINER) \
    ro.ctosp.device=$(CTOSP_DEVICE)
