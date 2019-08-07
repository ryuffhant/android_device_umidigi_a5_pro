# Device path
LOCAL_PATH := device/umidigi/a5_pro

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := mt6763

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6763

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += veritykeyid=id:7e4333f9bba00adfe0ede979e28ed1920492b40f
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x40078000
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_SECOND_OFFSET := 0x00e88000
BOARD_TAGS_OFFSET := 0x13f88000
BOARD_RECOVERY_DTBO_OFFSET := 16803840
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_RECOVERY_DTBO_SIZE := 42169
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/recovery_dtbo.img

#Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2793406464
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 218103808
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # BOARD_KERNEL_PAGESIZE * 64

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

########
# TWRP #
########

# Resolution
TW_THEME := portrait_hdpi
# DEVICE_RESOLUTION := 1080x2280 (deprecated)
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 2280

# Display
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 188
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_BATT_PERCENT := false
TW_SCREEN_BLANK_ON_BOOT := true

TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_TOOLBOX := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/bootdevice/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"

# Debug
TWRP_INCLUDE_LOGCAT := true

# Storage
TW_HAS_MTP := true
TW_MTP_DEVICE := /dev/mtp_usb
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NO_USB_STORAGE := false

# Languages
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en

TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# If build on minimal-manifest sources
ALLOW_MISSING_DEPENDENCIES=true
