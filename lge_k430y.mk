# Release name
#PRODUCT_RELEASE_NAME := p8000

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
#$(call inherit-product, device/elephone/p8000/device_p8000.mk)

# Configure dalvik heap
#$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

# Configure hwui memory
#$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

#TARGET_SCREEN_HEIGHT := 1920
#TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
#PRODUCT_DEVICE := p8000
#PRODUCT_NAME := cm_p8000
#PRODUCT_BRAND := elephone
#PRODUCT_MODEL := p8000
#PRODUCT_MANUFACTURER := elephone


#
# Copyright 2013 The Android Open-Source Project
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


# Get the long list of APNs
PRODUCT_COPY_FILES := device/lge/hammerhead/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)


PRODUCT_PACKAGES += \
    MGLauncher3 \
    Stk \
    TeleService 
    



PRODUCT_NAME := lge_k430y

PRODUCT_DEVICE := k430y
PRODUCT_BRAND := LGE
PRODUCT_MODEL := AOSP on K430Y
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := true


    
$(call inherit-product, device/lge/k430y/device.mk)


# appops configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.strict_op_enable=false \
    ro.boot.selinux=permissive \
    ro.hardware=mt6735 \
    ro.mgroup.device_type=car
    
    
#$(call inherit-product-if-exists, vendor/lge/hammerhead/device-vendor.mk)



#
# Copyright 2013 The Android Open Source Project
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
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)



