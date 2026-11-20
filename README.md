# TWRP Device Tree for realme RE6054

This tree was generated from a stock Android 16
Unisoc `vendor_boot` image. Build it with the `twrp-14.1`
source branch and lunch target `twrp_RE6054-ap2a-eng`.

The stock DTB, first-stage fstab, kernel modules, recovery fstab, and ueventd
configuration are retained under `recovery/root` and copied to `vendor_ramdisk`.
The generated image is `vendor_boot.img`; keep the stock `boot.img` in place.