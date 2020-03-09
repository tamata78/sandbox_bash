# 1.日付
## 1.1 フォーマット
### 日時表示のフォーマット
```
年：%Y	西暦の4桁の年
月：%m	01 〜 12
曜日：%a	Sun, Mon, Tue, Wed, Thu, Fri, Sat
日：%d	01 〜 31
時：%H	00 〜 23
分：%M	00 〜 59
秒：%S	00 〜 59
```

### 指定日付に処理実行
```
EXCLUSION_HOUR_LIST=(01,02,03,04,05,06,07)
hour=`date '+%H'`
if `echo ${EXCLUSION_HOUR_LIST[@]} | grep -q "$hour"`;
then
echo "No work!"
else
echo "work!"
fi

```

