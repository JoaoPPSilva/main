---
layout: home
title: Virtual_Machines
nav_order: 2
parent: PowerCLI
grand_parent: Commands
---

PowerCLI
=======

Commands for PowerCLI.

- Hard disk - SCSi id

```
Get-VM vmname | Get-HardDisk | Select @{N='VM';E={$_.Parent.Name}},Name,@{N='SCSIid';E={$_.ExtensionData.UnitNumber}},CapacityGB,StorageFormat,Filename|ft -autosize
```

- Resize hard HardDisk

```
Get-VM vmname |Get-Harddisk |Where {$_.Name -eq "hard_disk_id"} |Set-HardDisk -CapacityGB total_capacity
```

- Remove hard disk
```
$hdd = Get-HardDisk -VM 'vmname' -Name 'hard_disk_id'
Remove-HardDisk -HardDisk $hdd
```

- Set vRAM
```
Get-VM -Name vmname | Set-VM -MemoryGB numberOfGB -whatif
```

- List virtual machines
```
Get-View -ViewType HostSystem -Property Name, Config.Product | Select Name,{$_.Config.Product.FullName},{$_.Config.Product.Build} | ft -auto
```

- Create virtual machines
```
New-VM -Name 'vmname' –VMHost 'VMHost-1' -Datastore 'datastorename' -DiskGB numberOfGB -MemoryGB numberOfGB -NumCpu numberOfGB -NetworkName 'vLANname'
```

- Storage vMotion with storage format
```
Get-VM vmname |Get-Harddisk |Where {$_.Name -eq "hard_disk_id"} | Move-HardDisk -Datastore datastorename -StorageFormat EagerZeroedThick
```

- Move disk to another datastorename
```
$myDatastore = Get-Datastore -Name 'datastorename'
$myDisk = Get-VM -Name vmname | Get-HardDisk |Where {$_.Name -eq "hard_disk_id"}
Move-HardDisk -HardDisk $myDisk -Datastore $myDatastore
```
