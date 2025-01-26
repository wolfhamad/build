# Allwinner H618 quad core 4GB RAM SoC WiFi USB
BOARD_NAME="Transpeed 8k618-t"
BOARDFAMILY="sun50iw9"
BOARD_MAINTAINER="Nick A"
BOOTCONFIG="transpeed-8k618-t_defconfig"
OVERLAY_PREFIX="sun50i-h616"
BOOT_LOGO="desktop"
KERNEL_TARGET="edge"
FORCE_BOOTSCRIPT_UPDATE="yes"

function post_family_tweaks__station_m2() {
    display_alert "$BOARD" "Installing board tweaks" "info"

	cp -R $SRC/packages/blobs/station/firmware/brcm/* $SDCARD/lib/firmware/brcm
	cp -R $SRC/packages/blobs/sunxi/h618/armbian-audio-config $SDCARD/usr/lib/armbian
	cp -R $SRC/packages/blobs/sunxi/h618/armbian-audio-config $SDCARD/lib/armbian
	
	return 0
}
