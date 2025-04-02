# Allwinner H618 quad core 4GB RAM SoC WiFi USB
BOARD_NAME="Vontar H618"
BOARDFAMILY="sun50iw9"
BOARD_MAINTAINER=""
BOOTCONFIG="vontar_h618_defconfig"
OVERLAY_PREFIX="sun50i-h616"
BOOT_LOGO="desktop"
KERNEL_TARGET="edge,dev"
FORCE_BOOTSCRIPT_UPDATE="yes"

function post_family_tweaks__transpeed_8k618-t() {
    display_alert "$BOARD" "Installing board tweaks" "info"

	cp -R $SRC/packages/blobs/station/firmware/brcm/* $SDCARD/lib/firmware/brcm
	cp -R $SRC/packages/blobs/sunxi/h618/armbian-audio-config $SDCARD/usr/lib/armbian
	cp -R $SRC/packages/blobs/sunxi/h618/armbian-audio-config $SDCARD/lib/armbian

	return 0
}

function post_family_config_branch_edge__different_dtb_for_edge() {
    declare -g BOOT_FDT_FILE="allwinner/sun50i-h618-vontar-h618.dtb"
    display_alert "$BOARD" "Using ${BOOT_FDT_FILE} for ${BRANCH}" "info"
}
