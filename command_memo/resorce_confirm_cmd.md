## 4.サーバー状態確認

## 4.1 HD容量
### ファイルシステム毎の容量
```
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
devtmpfs        488M   56K  488M   1% /dev
tmpfs           497M     0  497M   0% /dev/shm
/dev/xvda1       30G   19G   12G  62% /
```
### サイズが大きいファイル(上位200件)
```
# アクセスできないファイルが多い場合は、rootで実行
$ du -b / | sort -nr | head -200
```

## 4.2 メモリ確認

### メモリ確認のみ
```
$ free
```

### OSリソース全体
```
$ top
$ ps aux
```

### CPU, メモリ確認
```
$ vstat
```