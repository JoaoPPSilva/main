---
layout: home
title: ESXcli
nav_order: 1
parent: Commands
---

ESXcli
=======

Commands for ESXcli.

- Convert EagerZeroedThick

`vmkfstools -k /vmfs/volumes/datastorename/vmname/vmdisk.vmdk`

- ESXi update

`vim-cmd hostsvc/maintenance_mode_enter
ls -l /vmfs/volumes/datastorename/folderName
esxcli software vib update -d "/vmfs/volumes/datastorename/folderName/patch.zip"`
