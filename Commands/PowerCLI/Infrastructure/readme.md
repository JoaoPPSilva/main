---
layout: home
title: Infrastructure
nav_order: 1
parent: PowerCLI
grand_parent: Commands
---

PowerCLI
=======

Commands for PowerCLI.

- Login & Logout on vCenter

`Connect-VIServer- Server FQDN server`
`Disconnect-VIServer -Server FQDN server`

- Get vCenter build number

`$Global:DefaultVIServer | select name, Version, Build`

- Get ESXi build number

`Get-View -ViewType HostSystem -Property Name,Config.Product | Format-Table Name, @{L='Host Version & Build Version';E={$_.Config.Product.FullName}}`

- Create local user

`New-VIRole -Name "username" -Privilege "prvilegeUser"`

- Assign a new role

`New-VIPermission -Entity "fqdnServer" -Principal "account-name" -Role "role" -Propagate:$true`

- List vLANs

`Get-VirtualSwitch -Name dvSwitch_name | Get-VirtualPortGroup | Select Name, VLanId`

- Add vLAN

`Get-Cluster "clusterName" | Get-VMHost | Get-VirtualSwitch -name dvSwitch_name | New-VirtualPortGroup -name "dvPortGroup_name" -VLanId id`

- Extend datastore

`$datastore = get-datastore datastorename
$esxi = Get-View -Id ($Datastore.ExtensionData.Host |Select-Object -last 1 | Select -ExpandProperty Key)
$datastoreSystem = Get-View -Id $esxi.ConfigManager.DatastoreSystem
$expandOptions = $datastoreSystem.QueryVmfsDatastoreExpandOptions($datastore.ExtensionData.MoRef)
$datastoreSystem.ExpandVmfsDatastore($datastore.ExtensionData.MoRef,$expandOptions.spec)`

- CPU ratio

`(get-cluster $ClusterName | Get-vm | Where Powerstate -eq "PoweredOn" | Measure NumCpu -sum).sum / (((Get-cluster $ClusterName | Get-vmhost).extensiondata.summary.hardware | Measure -Property numCpuCores -Sum).sum)`

- Create a new dvSwitch

`$myDatacenter = Get-Datacenter -Name "datacenterName"
New-VDSwitch -Name "dvSwitch_name" -Location $myDatacenter -Version "6.6.0"`
