---
layout: home
title: Oracle VM
nav_order: 1
parent: Documentation
---

Oracle VM
=========

OVM manager
-----------
1. Add a new disk with 50Gb and create a Volume Group (VG)
![Add a VG!](/main/assets/images/Picture3.png)
![Add a VG!](/main/assets/images/Picture4.png)

2. Permit root login and restart ssh service
```
#vi /etc/ssh/sshd_config

#Authentication --Section
PermitRootLogin yes

#service sshd restart
```

3. Delete all repos except the RedHat repository
```
#cd /etc/yum.repos.d/
#ls
redhat.repo serverbuild.repo serbuild.repo.bak
#rm -rf serbuild.repo
#rm -rf serverbuild.repo.bak
```

4. Add a client search domain on server
![Add a search domain!](/main/assets/images/Picture5.png)

```
#/etc/resolv.conf
```

5. Remove mariaDB
```
#yum remove mariadb-libs
```

6. Install dependencies
```
#yum install perl-Data-Dumper policycoreutils-python
```

7. Change a tmp permission for execute

8. Create /u01 and execute the following commands
```
#mkdir /u01
#mount -a
```

9. Mount iso on virtual machine and start OVM manager installation
```
#mount /dev/cdrom/mnt/
#cd /mnt/
#./createOracle.sh
```

10. Run script for installation and choose option to install
```
#./runinstaller.sh
```

11. Open URL in your browser
```
https://nameserver:7002/ovm/console
```

Host OVM
--------

