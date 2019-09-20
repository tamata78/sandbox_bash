# read setting
souce config
. config # . and source are same processing

# duplicate line check
sort file.txt | uniq -d

<<<<<<< HEAD
# OSバージョン・アーキ確認
```
# centos
cat /etc/redhat-release
CentOS release 6.10 (Final)

# Linux バージョン確認
cat /proc/version
Linux version 4.9.184-linuxkit (root@a8c33e955a82) (gcc version 8.3.0 (Alpine 8.3.0) ) #1 SMP Tue Jul 2 22:58:16 UTC 2019

# 32bit or 64bitの確認
$ arch
X86_64
```
=======
# del all space
tr -d ' '

# uniq count
sort file | uniq -c
>>>>>>> 910f68d59b54eea7fa7f97d5c5e8ca340149c329
