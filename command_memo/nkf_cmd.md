# 文字コード 確認
nkf --guess /path/to/<filename>
# Shift_JIS (CRLF)
# UTF-8 (LF)

# 文字コード変換 #####################
## shift-jis → linux utf-8
nkf -xLu -w --overwrite $file

##  linux utf-8 → shift-jis
nkf -xLw -s --overwrite $file

【nkfコマンドの主なオプション】
-u  出力時にバッファリングを行わない
-j  JISコードに変換する
-e  EUCコードに変換する
-s  シフトJISコードに変換する
-w  UTF8コードに変換する
-r  ROT13/47の変換する
-T  テキスト・モードで出力する
file  変換元のファイルを指定する
-g 文字コード自動判別の結果を表示
–overwrite 引数のファイルに直接上書き
