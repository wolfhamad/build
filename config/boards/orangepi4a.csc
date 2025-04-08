# Allwinner Cortex-A55 octa core 1/2/4GB RAM SoC
BOARD_NAME="orangepi 4a"
BOARDFAMILY="sun55iw3"
BOARD_MAINTAINER=""
BOOTCONFIG="radxa-a5e_defconfig"
OVERLAY_PREFIX="sun55i-a527"
BOOT_LOGO="desktop"
KERNEL_TARGET="dev"

function post_family_tweaks__orangepi-4a() {
	display_alert "Applying wifi firmware"
	pushd "$SDCARD/lib/firmware"
	ln -s "aic8800/SDIO/aic8800D80" "aic8800_sdio" # use armbian-firmware
	popd
}

function post_family_config_branch_edge__different_dtb_for_edge() {
	declare -g BOOT_FDT_FILE="dtb/allwinner/sun55i-t527-orangepi-4a.dtb"
	display_alert "$BOARD" "Using ${BOOT_FDT_FILE} for ${BRANCH}" "info"
}
