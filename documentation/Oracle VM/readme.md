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
![Add a VG](/assets/images/Picture1.jpg "Add a VG")
![Add a VG](/assets/images/Picture2.jpg "Add a VG")

2. Restart ssh service
```
service sshd restart
```

3. Delete all repos except the RedHat repository
```
#cd /etc/yum.repos.d/
#ls
redhat.repo serverbuild.repo serbuild.repo.bak
#rm -rf serbuild.repo
#rm -rf serverbuild.repo.bak
```

