# y or n comunication process
read -p "${X} : ok? (y/N):" yn
case "$yn" in 
  [yY]*) ;;
  *) echo "skipped." ; continue ;;
esac
