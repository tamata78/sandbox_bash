# 一括実行 xargs

## 複数のファイルに対してwcコマンドを個別に実行する方法
```
$ ls *キーワード* | xargs wc
```

## xargs iオプションは引数設定位置を{}と指定可能とする
```
$ find . -name "*.log" | xargs -i cp {} /tmp/.
```

## /var以下のファイル、ディレクトリ以下のファイルで指定文字列を全置換する
```
$ grep -rl 'hogehoge' /var | xargs perl -i -pe "s/hogehoge/fugafuga/g" 
```


