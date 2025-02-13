# Allwinner Cortex-A55 octa core 2/4GB RAM SoC USB3 USB-C 2x GbE
BOARD_NAME="radxa cubie a5e"
BOARDFAMILY="sun55iw3"
BOARD_MAINTAINER="Nick A"
BOOTCONFIG="radxa-a5e_defconfig"
OVERLAY_PREFIX="sun55i-a527"
BOOT_LOGO="desktop"
KERNEL_TARGET="edge"

function post_family_tweaks__radxa_cubie-a5e() {
	display_alert "Applying wifi firmware"
	pushd "$SDCARD/lib/firmware"
	ln -s "aic8800/SDIO/aic8800D80" "aic8800_sdio" # use armbian-firmware
	popd
}
