#!/bin/bash

# read brunch_info_conf file, remake tag

while read line
do
  brunchInfo=( `echo $line | tr -s ',' ' '`)
  TGT_ROOT=${brunchInfo[0]}
  STG_NO=${brunchInfo[1]}
  TGT_BRUNCH=${brunchInfo[2]}

  TGT_TAG=${TGT_ROOT}/tags/STG${STG_NO} 
  svn log ${TGT_TAG} | head -n 1
  echo "----------------------------"
  echo "DEL TARGET TAG: ${TGT_TAG}"
  read -p "タグを削除しますか？ : ok? (y/N):" yn
  case "$yn" in [yY]*) ;; *) echo "skipped." ; continue ;; esac
  
  svn del ${TGT_TAG}
  svn copy ${TGT_ROOT}/branches/${TGT_BRUNCH} ${TGT_TAG}

done < ./tgt_brunch.conf
