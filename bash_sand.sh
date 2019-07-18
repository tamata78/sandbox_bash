#!/bin/bash

# 引数  #####################
#$0	スクリプトの名前
#$1-9	スクリプトに指定された引数の値(数値は引数の位置)
#$#	スクリプトに指定された引数の数
#$*	スクリプトに指定された引数全部 "$*"の場合は "$1 $2..."
#$@	スクリプトに指定された引数全部 "$@"の場合は "$1" "$2" ...
#$?	直前のコマンドの終了ステータス
#$$	カレントシェルのプロセスID
#$!	直前のバックグランドジョブのプロセスID
#$-	カレントシェルの動作オプション

# 配列 #####################
## 配列に指定文字列が存在するかチェック
array=("one" "two" "three");
word=$1
 
if ! `echo ${array[@]} | grep -q "$word"` ; then
    echo "値がありませんでした"
fi

# IF #####################
if [ $# -gt 0 ]; then # 引数あり
elif
else
fi

if [ -n $1 ]; then # 文字列長が 0 より大なら真

if [ -z $1 ]; then # 文字列長が 0 なら真

if [ -n $1 ] && [ $1 != $OP_DATE ]; then # 複数条件

# 変数
str1 = "a" # 文字列結合
str2 = "b"
str = $str1$str2 # ab

# ループ #####################

## ディレクトリ内でファイル一覧でループ
for file in `\find . -maxdepth 1 -type f`; do
    # TODO
done

## 引数の数だけループ処理を行う
for x in "$@"; do
  echo "$x"
done

## 配列ループ
for v in "${array[@]}"
do
   echo "$v"
done

## 対象日付つきのファイル名を表示
for file in `find * -type f | grep ${TARGET_FILE_DATE}`; do
  echo "$file"
done

## カンマ区切り文字列のループ処理
IFS=,
hoge="a,b,c,d"
for m in $hoge
do
    echo "m=$m"
done

## カンマ区切り文字列を配列化
WORD='AAA,あああ,1234'
arr=( `echo $WORD | tr -s ',' ' '`) # カンマをスペース変換して、配列変換
echo ${arr[0]}
echo ${arr[1]}
echo ${arr[2]}

# ファイル #####################
## 一行一行読み込み
while read line
do
  echo $line
done < ./list.txt

cat ファイル名 | while read line
do
  echo $line
done

## ファイル1行1行を配列へ変換 
list=(`cat test.txt|xargs`)

## 指定ディレクトリ以下にファイルが存在しないかどうか
if [ "$(ls temp | wc -w)" = 0 ] ; then
    echo "no file"
fi

# case #####################
## 基本
case "$var" in
  "a" ) 処理1 ;;
  "bb" ) 処理1 ;;
  "c c c" ) 処理3 ;;
esac

## ORとワイルドカード
case "$var" in
  "yes" | "Yes" | "YES" ) echo "イエスが入力されました" ;;
  [nN]o | "NO" ) echo "ノーが入力されました" ;;
  * ) echo "イエスでもノーでもありません" ;;
esac

# 関数 #####################
say_hello () {
    echo "Hello, world!"
}
# 関数の呼び出し
say_hello
