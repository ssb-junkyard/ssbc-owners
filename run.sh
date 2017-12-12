
#! /bin/bash

REPOS="ssb-about
ssb-avatar
ssb-backlinks
ssb-blobs
ssb-client
ssb-config
ssb-contacts
ssb-ebt
ssb-feed
ssb-friends
ssb-generate
ssb-irc
ssb-keys
ssb-links
ssb-markdown
ssb-marked
ssb-mentions
ssb-msg-schemas
ssb-msgs
ssb-names
ssb-private
ssb-query
ssb-reduce
ssb-reduce-stream
ssb-ref
ssb-search
ssb-secret-blob
ssb-sort
ssb-status
ssb-thread
ssb-viewer
ssb-ws
scuttlebot
secure-scuttlebutt
multiserver
multiblob
muxrpc
packet-stream
react-native-scuttlebot
react-native-ssb-client
react-native-ssb-client-keys
react-native-ssb-shims
"
AUTHORS="dominictarr mixmix cel ahdinosaur mmckegg evbogue gwenbell staltz marak"

for R in $REPOS; do
  OWNERS=$(npm owner ls $R | awk '{print $1}')
  for A in $AUTHORS; do
    echo $OWNERS | grep -o $A > /dev/null
    IS_OWNER=$?
    if [[ 0 == "$IS_OWNER" ]]; then 
      echo $A already owns $R
    else
      echo npm owner add $A $R
      npm owner add $A $R
    fi
  done
done


