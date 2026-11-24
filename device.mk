LOCAL_PATH := device/realme/RE6054

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_VIRTUAL_AB_OTA := true
PRODUCT_SHIPPING_API_LEVEL := 33

SPRD_VENDOR_RAMDISK_FILES := \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,vendor_ramdisk)

PRODUCT_COPY_FILES += $(SPRD_VENDOR_RAMDISK_FILES)
SPRD_VENDOR_RAMDISK_FILES :=

PRODUCT_PACKAGES += \
    check_f2fs \
    dump.erofs \
    f2fs_io \
    fsck.erofs \
    sg_write_buffer \
    checkpoint_gc \
    snapuserd \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

PRODUCT_HOST_PACKAGES += \
    mkfs.erofs
