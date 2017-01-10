#!/bin/bash
EPG2XML=`pwd`/epg2xml.py
IPTV=LG
LIMIT=2
XMLTVSOCK=/storage/.kodi/userdata/addon_data/service.tvheadend42/epggrab/xmltv.sock
  
if [ -x $EPG2XML ]; then
    if [ -S $XMLTVSOCK ]; then
        python $EPG2XML -l $LIMIT -i $IPTV -s $XMLTVSOCK > /dev/null 2>&1
    fi
fi