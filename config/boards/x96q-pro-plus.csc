# Allwinner Cortex-A55 octa core 1/2/4GB RAM SoC
BOARD_NAME="x96q pro plus"
BOARDFAMILY="sun55iw3"
BOARD_MAINTAINER=""
BOOTCONFIG="x96q_pro_plus_defconfig"
OVERLAY_PREFIX="sun55i-a527"
#BOOT_LOGO="desktop"
KERNEL_TARGET="dev"

function post_family_tweaks__x96q-pro-plus() {
	display_alert "Applying wifi firmware"
	pushd "$SDCARD/lib/firmware"
	ln -s "aic8800/SDIO/aic8800D80" "aic8800_sdio" # use armbian-firmware
	popd
}
