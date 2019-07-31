# y or n comunication process
read -p "${X} : ok? (y/N):" yn
case "$yn" in 
  [yY]*) ;;
  *) echo "skipped." ; continue ;;
esac

# add multiple lines
echo << EOS 
aaa
bbb
EOS >> sample.txt
