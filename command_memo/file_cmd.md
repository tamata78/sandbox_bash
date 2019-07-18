# 1.ファイル・ディレクトリ
## 1.1 ファイル検索 
### ファイル名を名称指定で検索
```
$ find ./*/*file_name* -type f | wc
```

### ディレクトリ名を名称指定で検索
```
$ find dir_name -type d
```

### 指定日時以降に作成されたファイルを検索
```
$ find . -newermt '2018-10-09 15:00:00'
```

### 実行日の年月日ディレクトリ以下の1分前以降に作成されたファイルを検索
```
$ find /var/log/`date '+%Y-%m-%d'` -newermt "`date '+%Y-%m-%d %H:%M:%S' -d '1 minute ago'`"
```

## 1.2 ファイル、ディレクトリ作成
### 連番複数ディレクトリ作成
```
$ touch aaa{1,2,3}
$ aaa1 aaa2  aaa3
```

### 複数ディレクトリ直下に同一複数ファイルを作成
```
$ mkdir {aa,bb}f
$ touch {aa,bb}/test{1,2}
$ ls -l {aa,bb}
aa:
total 0
-rw-rw-r-- 1 app app 0 Oct 10 12:25 test1
-rw-rw-r-- 1 app app 0 Oct 10 12:25 test2

bb:
total 0
-rw-rw-r-- 1 app app 0 Oct 10 12:25 test1
-rw-rw-r-- 1 app app 0 Oct 10 12:25 test2
```
## 1.3 ファイル圧縮・解凍

### zip
圧縮
```
$ zip archive_name file_name
$ zip archive_name -r directory
```
解凍
```
$ unzip file_name
$ unzip directory
```

### gz
圧縮
```
$ gzip file_name
$ gzip -r directory
```
解凍
```
$ gzip -d file_name
$ gunzip file_name
```

### tar
圧縮
```
$ tar -cvf xxxx.tar directory
```
解凍
```
# 1ファイル
$ tar -xvf xxxx.tar

# 複数ファイル
for tar_file in `ls *.tgz` ; do
    tar zxvf ${tar_file}
    rm -f ${tar_file}
done
```

# 1.4 ファイルの移動　rsync ユーザーとグループを変更しつつコピーする
```
# 凡例
rsync -arv --usermap=変更元ユーザー:変更先ユーザー --groupmap=変更元グループ:変更先グループ 変更元ディレクトリ/* 変更先
ディレクトリ

# 実行例
rsync -arv --usermap=ckenko25:root --groupmap=ckenko25:sambashare  /media/usb0/確定申告/* /media/usb0/samba/tax
```
