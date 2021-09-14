---
nav_order: 2
---

PowerCLI
=======

This section is intended for PowerCLI commands.

- Hard disk - SCSi id

`Get-VM vmname | Get-HardDisk | Select @{N='VM';E={$_.Parent.Name}},Name,@{N='SCSIid';E={$_.ExtensionData.UnitNumber}},CapacityGB,StorageFormat,Filename|ft -autosize`

- Resize hard HardDisk

`Get-VM lxpdsx01 |Get-Harddisk |Where {$_.Name -eq "Hard disk 14"} |Set-HardDisk -CapacityGB 1050`
