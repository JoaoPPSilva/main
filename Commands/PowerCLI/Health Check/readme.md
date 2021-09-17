---
layout: home
title: Health_Check
nav_order: 3
parent: PowerCLI
grand_parent: Commands
---

PowerCLI
=======

Commands for PowerCLI.

- Add BUN message

"`Get-VMHost | Get-AdvancedSetting -Name 'Config.Etc.issue' | Set-AdvancedSetting -value "Put your message here"`"
"`Get-VMHost | Get-AdvancedSetting -Name 'Annotations.WelcomeMessage' | Set-AdvancedSetting -value "Put your message here"`"

- Shell timeout session

"`Get-VMHost | Get-AdvancedSetting -Name 'UserVars.ESXiShellInteractiveTimeout' | Set-AdvancedSetting -value "timeSeconds"`"
"`Get-VMHost | Get-AdvancedSetting -Name 'UserVars.ESXiShellTimeout' | Set-AdvancedSetting -value "timeSeconds"`"
"`Get-VMHost | Get-AdvancedSetting -Name 'UserVars.DcuiTimeOut'`"

- Failed attempts

"`Get-VMHost $hostName | Get-AdvancedSetting -Name 'Security.AccountLockFailures' | Set-AdvancedSetting -value "$value"`"

- Lockout duration

"`Get-VMHost $hostname | Get-AdvancedSetting -Name 'Security.AccountLockFailures' | Set-AdvancedSetting -value "$value"`"

- Password requirements (eg: retry=5 min=disabled,disabled,disabled,7,7)

"`Get-VMHost $hostname | Get-AdvancedSetting -Name 'Security.PasswordQualityControl' | Set-AdvancedSetting -value "retry=5 min=disabled,disabled,disabled,7,7"`"
