#!/bin/bash

# 引数  #####################
#$0  スクリプトの名前
#$1-9  スクリプトに指定された引数の値(数値は引数の位置)
#$#  スクリプトに指定された引数の数
#$*  スクリプトに指定された引数全部 "$*"の場合は "$1 $2..."
#$@  スクリプトに指定された引数全部 "$@"の場合は "$1" "$2" ...
#$?  直前のコマンドの終了ステータス
#$$  カレントシェルのプロセスID
#$!  直前のバックグランドジョブのプロセスID
#$-  カレントシェルの動作オプション

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

if [ $# == 0 ]; then usage; fi # 引数なしの婆愛
function usage()
{
 cat <<EOM
Required arguments:
    -f | --file       実行するファイル
EOM
}
# 代入 #####################

# 文字列結合
str1 = "a"; str2 = "b"
str = $str1$str2 # ab

# 三項演算子もどき
[ $foo -ge $bar ] && baz=0 || baz=1

# 未定義時にデフォルト値を代入
foo=${bar:-0}

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

## 検索ファイル名のループ
for i in `find /usr/local/tomcat/App/WEB-INF/lib -name "*.jar" -print`;
do
  CLASSPATH="$CLASSPATH：$i"
  export CLASSPATH
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

# 日付 #####################

# 現在の日時を表示
$ date

# フォーマットは + で始まる書式で指定
$ date "+%Y%m%d-%H%M%S"

# 24時間後の日時を表示
$ date -d tomorrow

# 30日後の日付を表示
date "+%Y/%m/%d" -d "30 days"


# ファイル・ディレクトリ #####################
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

## shell実行ディレクトリ取得
script_dir_path=$(dirname $(readlink -f $0))
script_dir_path=$(dirname $(greadlink -f $0)) # case BSD or OSX

## create tmpfile, tmpDir
temp_file=$(mktemp)
temp_dir=$(mktemp -d)

# signal #####################

trap "rm /tmp/temporary-file" 0 # comp the interruption process to the end
trap "
  mv /tmp/swap-file original-file
  rm /tmp/target-file
" 0 # exec multi cmd

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
  -f|--file) echo "ファイルが指定されました" ;;
  * ) echo "イエスでもノーでもありません" ;;
esac

# 関数 #####################
say_hello () {
    echo "Hello, world!"
}
# 関数の呼び出し
say_hello

# 対話入力 ####################
# y or n comunication process
read -p "${X} : ok? (y/N):" yn
case "$yn" in
  [yY]*) ;;
  *) echo "skipped." ; continue ;;
esac

# 複数行入力 ####################
# add multiple lines
echo << EOS
aaa
bbb
EOS >> sample.txt
