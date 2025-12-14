sed -i \
-e 's/^CONFIG_RT2880_FLASH_8M=y/# CONFIG_RT2880_FLASH_8M is not set/' \
-e 's/^# CONFIG_RT2880_FLASH_16M is not set/CONFIG_RT2880_FLASH_16M=y/' \
padavan-ng/trunk/configs/boards/TPLINK/TL_WR840N-V4_USB/kernel-3.4.x.config

sed -i \
's/TPLINK_FLASHLAYOUT=8Mmtk/TPLINK_FLASHLAYOUT=16Mmtk/' \
padavan-ng/trunk/configs/boards/TPLINK/TL_WR840N-V4_USB/board.mk

sed -i \
-e 's/size:[[:space:]]*0x780000,/size:\t0xF80000,/' \
-e 's/offset:[[:space:]]*0x7A0000,/offset:\t0xFA0000,/' \
-e 's/offset:[[:space:]]*0x7C0000,/offset:\t0xFC0000/' \
-e 's/offset:[[:space:]]*0x7D0000/offset:\t0xFD0000/' \
-e 's/offset:[[:space:]]*0x7E0000/offset:\t0xFE0000/' \
-e 's/offset:[[:space:]]*0x7F0000/offset:\t0xFF0000/' \
padavan-ng/trunk/configs/boards/TPLINK/pt_tplink_8m.config

sed -i \
-e 's/\.id[[:space:]]*=[[:space:]]*"8Mmtk"/.id\t\t= "16Mmtk"/' \
-e 's/\.fw_max_len[[:space:]]*=[[:space:]]*0x7a0000/.fw_max_len\t= 0xf80000/' \
padavan-ng/trunk/tools/mktplinkfw/mktplinkfw2.c
