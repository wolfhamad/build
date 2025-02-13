#
# SPDX-License-Identifier: GPL-2.0
# This file is a part of the Armbian Build Framework https://github.com/armbian/build/
# This copies scp.bin to u-boot-a523 directory

function pre_config_uboot_target__copy_scp_to_uboot() {
	display_alert "#################### Copying scp.bin to u-boot-a523 directory ####################" 
	run_host_command_logged cp -f "${SRC}"/packages/blobs/sunxi/sun55iw3/scp.bin "${SRC}"/cache/sources/u-boot-worktree/u-boot/a523/
}
