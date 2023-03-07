#!/bin/sh
#システムにこれからシェルスクリプトを書くと知らせる

CURRENT=$(cd $(dirname $0);pwd)
#echo $CURRENT
# LANG=en_US.UTF-8
num=`date '+%I:%M'`
ampm=`date '+%p'`
#num=$1
#MSG=$(jq   ".content[${num}]" jihou.json)
#leng=$(( ${#MSG} -1))

#日付変わったときに日付を出したい
dif1="$(date '+%H:%M')"
dif2="00:00"

if [ $dif1 != $dif2 ] ; then
num=`date '+%H:%M'`
  #MSG="‐‐‐‐‐‐‐‐${num}_${ampm}‐‐‐‐‐‐‐‐"
  MSG="‐‐‐‐‐‐‐‐${num}‐‐‐‐‐‐‐‐"
  
    echo $num
else
    num1="$(date '+%Y/%m/%d(%a)')"
    MSG="‐‐‐‐‐‐‐${num1}‐‐‐‐‐‐‐"
    echo $num
fi
	

#msg=`echo ${MSG} | cut -c 2-${leng}`
echo "$MSG"
/home/mono/go/bin/algia -a sub1 n $MSG
