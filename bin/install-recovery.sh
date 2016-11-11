#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:7632896:7a0dec90bfbde6ab77deae4eb319686828e2b61c; then
  applypatch EMMC:/dev/block/mmcblk0p9:7100416:fb4386fc13cc22331064855a8ef2f6ec2bd8179d EMMC:/dev/block/mmcblk0p10 7a0dec90bfbde6ab77deae4eb319686828e2b61c 7632896 fb4386fc13cc22331064855a8ef2f6ec2bd8179d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
