# TWRP device tree for UMIDIGI A5 Pro

## About Device

![UMIDIGI A5 Pro](https://www.umidigi.com/new/Images/a5pro/overview/13_1.png)

### Specifications

Component Type | Details
-------:|:-------------------------
CPU     | Octa-Core 4 x 2.0GHz ARM Cortex-A53 + 4 x 1.5GHz ARM Cortex-A53 CPU Clock
Platform | MediaTek MT6763
GPU     | ARM Mali-G71 MP2, 770 MHz, 2-Cores
Memory  | 4GB LPDDR4(X), 1600MHz
Shipped Android Version | 	Android 9.0 Pie
Storage | ROM 32GB External Memory Supports Up to 256GB (Uses SIM 2 Slot)
Battery | Non-Removable 4150 mAh Lithium-Polymer
Dimensions | 75.9 mm x 156 mm x 8.2 mm
Weight | 203 g
Display | 6.3-inches IPS FHD+ Display (1080 x 2280 Pixels) 24-bit
Camera | 16MP + 8MP + 5MP with Dual-LED and AF Triple Rear Camera | 16MP  Front Camera
More Feature | Aluminum Body, Front Glass Body Design, LTE Cat7 300 Mbps Download, 100 Mbps Upload, HSPA+, Computer Sync, OTA Sync, VoLTE, Rounded Edges, OTG Support, Secure and Fast Fingerprint Sensor, 5V/2A Charger Output Power.

**This device tree can be used to build twrp for UMIDIGI A5 Pro**


## Build Instructions
```sh
. build/envsetup.sh
lunch omni_a5_pro-eng
mka recoveryimage
