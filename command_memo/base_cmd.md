# read setting
souce config
. config # . and source are same processing

# duplicate line check
sort file.txt | uniq -d

# del all space
tr -d ' '

# uniq count
sort file | uniq -c
