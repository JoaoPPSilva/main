PowerCLI
=======

This section is intended for PowerCLI commands.

- Hard disk - SCSi id

`Get-VM vmname | Get-HardDisk | Select @{N='VM';E={$_.Parent.Name}},Name,@{N='SCSIid';E={$_.ExtensionData.UnitNumber}},CapacityGB,StorageFormat,Filename|ft -autosize`

- Resize hard HardDisk

`Get-VM vmname |Get-Harddisk |Where {$_.Name -eq "hard_disk_id"} |Set-HardDisk -CapacityGB total_capacity`

- Remove hard disk

`$hdd = Get-HardDisk -VM 'vmname' -Name 'hard_disk_id'`
`Remove-HardDisk -HardDisk $hdd`

- Set vRAM

`Get-VM -Name vmname | Set-VM -MemoryGB numberOfGB -whatif`

- List virtual machines

`Get-View -ViewType HostSystem -Property Name, Config.Product | Select Name,{$_.Config.Product.FullName},{$_.Config.Product.Build} | ft -auto`

- Login & Logout on vCenter
`Connect-VIServer- Server FQDN server`
`Disconnect-VIServer -Server FQDN server`

- Get vCenter build number

`$Global:DefaultVIServer | select name, Version, Build`

- Get ESXi build number

`Get-View -ViewType HostSystem -Property Name,Config.Product | Format-Table Name, @{L='Host Version & Build Version';E={$_.Config.Product.FullName}}`

- Create virtual machines

`New-VM -Name 'vmname' –VMHost 'VMHost-1' -Datastore 'datastorename' -DiskGB numberOfGB -MemoryGB numberOfGB -NumCpu numberOfGB -NetworkName 'vLANname'`

- Create local user

`New-VIRole -Name "username" -Privilege "prvilegeUser"`

- Assign a new role

`New-VIPermission -Entity "fqdnServer" -Principal "account-name" -Role "role" -Propagate:$true`

- Storage vMotion with storage format

`Get-VM vmname |Get-Harddisk |Where {$_.Name -eq "hard_disk_id"} | Move-HardDisk -Datastore datastorename -StorageFormat EagerZeroedThick`
