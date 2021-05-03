def FullOTA_InstallEnd(info):
    info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/system", "/system");');
    info.script.AppendExtra('run_program("/sbin/sed", "-i", "/fuseblk/d", "/system/etc/selinux/plat_sepolicy.cil");');
    info.script.AppendExtra('unmount("/system");');
    info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/vendor", "/vendor");');
    info.script.AppendExtra('run_program("/sbin/sed", "-i", "s|    chmod 0660 /dev/hdmitx|    chmod 0666 /dev/hdmitx|g", "/vendor/etc/init/hw/init.mt8163.rc");');
    info.script.AppendExtra('unmount("/vendor");');
