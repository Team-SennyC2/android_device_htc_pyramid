#
# Copyright (C) 2011 The CyanogenMod Project
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

# Inherits
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    device/htc/pyramid/overlay

# GPS
PRODUCT_COPY_FILES += \
    device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf

PRODUCT_PACKAGES += \
    gps.pyramid

# Bluetooth firmware
PRODUCT_COPY_FILES += \
    device/htc/pyramid/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/pyramid/ramdisk/fstab.pyramid:root/fstab.pyramid \
    device/htc/pyramid/ramdisk/init.pyramid.rc:root/init.pyramid.rc \
    device/htc/pyramid/ramdisk/init.pyramid.usb.rc:root/init.pyramid.usb.rc \
    device/htc/pyramid/ramdisk/ueventd.pyramid.rc:root/ueventd.pyramid.rc \
    device/htc/pyramid/ramdisk/remount.pyramid:root/remount.pyramid

# Recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/pyramid/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/pyramid/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/pyramid/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/pyramid/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/pyramid/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/pyramid/keychars/pyramid-keypad.kcm:system/usr/keychars/pyramid-keypad.kcm \
    device/htc/pyramid/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/pyramid/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
    device/htc/pyramid/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/pyramid/keylayout/pyramid-keypad.kl:system/usr/keylayout/pyramid-keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/pyramid/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
    device/htc/pyramid/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# HTC BT Audio tune
PRODUCT_COPY_FILES += \
    device/htc/pyramid/dsp/AudioBTID.csv:system/etc/AudioBTID.csv

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/pyramid/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/pyramid/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/pyramid/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/pyramid/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/pyramid/dsp/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/pyramid/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/pyramid/dsp/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_HP_LE.txt:system/etc/soundimage/Sound_Phone_Original_HP_LE.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_HP_WB_LE.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB_LE.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/pyramid/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt

# Telephony permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Vendor setup
$(call inherit-product-if-exists, vendor/htc/pyramid/pyramid-vendor.mk)

# Media capabilities
PRODUCT_PROPERTY_OVERRIDES += \
      media.a1026.nsForVoiceRec            = 0 \
      media.a1026.enableA1026              = 0

# HTC audio
PRODUCT_PROPERTY_OVERRIDES += \
      htc.audio.alt.enable=0 \
      htc.audio.hac.enable=0

# Dalvik-cache config
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Qcom scripts
PRODUCT_COPY_FILES += \
    device/htc/pyramid/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/htc/pyramid/prebuilt/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# WiFi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    audio_policy.conf \
    libaudioutils \
    libaudio-resampler \
    audio.usb.default

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    memtrack.msm8660 \
    lights.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc

# Camera
PRODUCT_PACKAGES += \
    camera.msm8660 \
    libsurfaceflinger_client \
    libstagefrighthw

# Net
PRODUCT_PACKAGES += \
    libnetcmdiface

# GooManager
PRODUCT_PACKAGES += \
    GooManager

# Power
PRODUCT_PACKAGES += \
    power.msm8660

# Torch
PRODUCT_PACKAGES += \
    Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem-management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Media configuration
PRODUCT_COPY_FILES += \
    device/htc/pyramid/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/pyramid/configs/media_profiles.xml:system/etc/media_profiles.xml

# Use high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y \
    ro.goo.version=$(shell date +%s)

# Qcom build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.mdpcomp.logs=0 \
    debug.egl.hw=1 \
    debug.sf.hw=1 \
    ro.opengles.version=131072 \
    debug.egl.recordable.rgba8888=1
