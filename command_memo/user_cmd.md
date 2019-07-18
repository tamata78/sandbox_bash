# 3.ユーザー
## 3.1 ユーザー一覧
```
$cat /etc/passwd

root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
```

## 3.2 ユーザー追加
```
sudo su -
useradd -m [user]
passwd [user]
```
