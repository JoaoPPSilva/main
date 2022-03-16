---
layout: home
title: Oracle VM
nav_order: 1
parent: Documentation
has_children: true
---

Oracle VM
=========

OVM manager
-----------
1. Add a new disk with 50Gb and create a Volume Group (VG)
![Add a VG](/main/assets/images/Picture3.png)
![Add a VG](/main/assets/images/Picture4.png)

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

1. Add all information about other hosts and managers in host file

2. Add DNS servers
```
#vi /etc/ntp.conf
```

OVM Manager - web interface
---------------------------
1. Add hosts
![Add hosts](/main/assets/images/Picture6.png)
![Add hosts](/main/assets/images/Picture7.png)

2. Config bonds
![Config bonds](/main/assets/images/Picture8.png)
![Config bonds](/main/assets/images/Picture9.png)
![Config bonds](/main/assets/images/Picture10.png)
![Config bonds](/main/assets/images/Picture11.png)

3. Create cluster
![Config bonds](/main/assets/images/Picture12.png)
![Config bonds](/main/assets/images/Picture13.png)
![Config bonds](/main/assets/images/Picture14.png)
![Config bonds](/main/assets/images/Picture15.png)
![Config bonds](/main/assets/images/Picture16.png)
![Config bonds](/main/assets/images/Picture17.png)

4. Create a production bond
![Config bonds](/main/assets/images/Picture18.png)
![Config bonds](/main/assets/images/Picture19.png)
![Config bonds](/main/assets/images/Picture20.png)
![Config bonds](/main/assets/images/Picture21.png)

5. Network configuration
![Config network](/main/assets/images/Picture22.png)
![Config network](/main/assets/images/Picture23.png)
![Config network](/main/assets/images/Picture24.png)
![Config network](/main/assets/images/Picture25.png)
![Config network](/main/assets/images/Picture26.png)
![Config network](/main/assets/images/Picture27.png)

6. Create repositories
![Config network](/main/assets/images/Picture28.png)
![Config network](/main/assets/images/Picture29.png)
![Config network](/main/assets/images/Picture30.png)
![Config network](/main/assets/images/Picture31.png)
![Config network](/main/assets/images/Picture32.png)


