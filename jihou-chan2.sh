#!/bin/sh
#rust.sh
CURRENT=$(cd $(dirname $0);pwd)

str="t"
date=`date '+%I%M'`
#num=0;
time=$str$date
#echo $time

MSG=$(jq -r ".$time" $CURRENT/json/imgUrl.json)
#echo $MSG

# 15ふん前二日付を変える
today=`date --date "15 minute" '+%Y/%m/%d(%a)'`
echo $today
num=`date '+%H:%M'`





  #MSG="‐‐‐‐‐‐‐‐${num}_${ampm}‐‐‐‐‐‐‐‐"
  text=" -------------${num}------------- "
  


 /home/mono/Documents/github/nostr-tool/target/debug/nostr-tool \
 -r wss://relay.damus.io \
 -r wss://relay.nostr.info \
 -r wss://relay-jp.nostr.wirednet.jp/ \
 -r wss://nostr.h3z.jp/ \
 -r wss://nos.lol \
 -r wss://brb.io \
 -r wss://relay.current.fyi \
 -r wss://nostr.fmt.wiz.biz \
 -r  wss://nostr-pub.wellorder.net \
 -r wss://nostr.relayer.se \
 -r wss://nostr.massmux.com \
 -r  wss://nostr.fediverse.jp \
 -p nsec1s29vax79mj5ch98deunxw9rl4840mmhwayj5ude5ttr0th7ahdxqmuvfqt text-note -c "$text"

  /home/mono/Documents/github/nostr-tool/target/debug/nostr-tool \
  -r wss://relay.damus.io \
  -r wss://relay.nostr.info \
  -r wss://relay-jp.nostr.wirednet.jp/ \
  -r wss://nostr.h3z.jp/ \
  -r wss://nos.lol \
  -r wss://brb.io \
  -r wss://relay.current.fyi \
  -r wss://nostr.fmt.wiz.biz \
  -r  wss://nostr-pub.wellorder.net \
  -r wss://nostr.relayer.se \
  -r wss://nostr.massmux.com \
  -r  wss://nostr.fediverse.jp \
  -p nsec1s29vax79mj5ch98deunxw9rl4840mmhwayj5ude5ttr0th7ahdxqmuvfqt update-metadata -a "たまに寝てる" -n tm2 --display-name "$today" -p "$MSG" --nip05 tm2@tsukemonogit.github.io