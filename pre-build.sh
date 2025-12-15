sed -i 's/^CONFIG_RT2880_FLASH_8M=y/# CONFIG_RT2880_FLASH_8M is not set/' padavan-ng/trunk/configs/boards/TPLINK/TL_WR840N-V4_USB/kernel-3.4.x.config
sed -i 's/^# CONFIG_RT2880_FLASH_16M is not set/CONFIG_RT2880_FLASH_16M=y/' padavan-ng/trunk/configs/boards/TPLINK/TL_WR840N-V4_USB/kernel-3.4.x.config

sed -i 's/^TPLINK_FLASHLAYOUT=8Mmtk/TPLINK_FLASHLAYOUT=16Mmtk/' padavan-ng/trunk/configs/boards/TPLINK/TL_WR840N-V4_USB/board.mk

sed -i 's/size:[[:space:]]*0x780000/size: 0xF80000/' padavan-ng/trunk/configs/boards/TPLINK/pt_tplink_8m.config
sed -i 's/offset:[[:space:]]*0x7A0000/offset: 0xFA0000/' padavan-ng/trunk/configs/boards/TPLINK/pt_tplink_8m.config
sed -i 's/offset:[[:space:]]*0x7C0000/offset: 0xFC0000/' padavan-ng/trunk/configs/boards/TPLINK/pt_tplink_8m.config
sed -i 's/offset:[[:space:]]*0x7D0000/offset: 0xFD0000/' padavan-ng/trunk/configs/boards/TPLINK/pt_tplink_8m.config
sed -i 's/offset:[[:space:]]*0x7E0000/offset: 0xFE0000/' padavan-ng/trunk/configs/boards/TPLINK/pt_tplink_8m.config
sed -i 's/offset:[[:space:]]*0x7F0000/offset: 0xFF0000/' padavan-ng/trunk/configs/boards/TPLINK/pt_tplink_8m.config

sed -i 's/\.id[[:space:]]*=[[:space:]]*"8Mmtk"/.id = "16Mmtk"/' padavan-ng/trunk/tools/mktplinkfw/mktplinkfw2.c
sed -i 's/\.fw_max_len[[:space:]]*=[[:space:]]*0x7a0000/.fw_max_len = 0xf80000/' padavan-ng/trunk/tools/mktplinkfw/mktplinkfw2.c
