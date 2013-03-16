#!/system/bin/sh

insmod /system/lib/modules/bcmdhd.ko "firmware_path=/system/vendor/firmware/fw_bcmdhd_apsta.bin nvram_path=/proc/calibration"

exit 0
