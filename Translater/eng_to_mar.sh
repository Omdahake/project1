awk -f unicode2.awk $1 | sed 's#  #~#g'|sed -f reverse|sed 's# ##g'| sed 's#~# #g'

