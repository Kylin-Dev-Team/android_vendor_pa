# Copyright (C) 2013 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_flo,$(TARGET_PRODUCT))

# Include ParanoidAndroid common configuration
TARGET_BOOT_ANIMATION_RES := 1080
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_flo
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=razor \
	BUILD_FINGERPRINT=google/razor/flo:6.0.1/MOB30X/3036618:user/release-keys \
	PRIVATE_BUILD_DESC="razor-user 6.0.1 MOB30X 3036618 release-keys"

endif
