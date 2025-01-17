sed -f anti_reverse $1 |
sed 's#  #+#g'|
sed 's#\(.*\)$#\1~#g'|
sed -f anti_0905 |
sed -f anti_0905 |
sed -f anti_joda |
sed -f anti_test_script| 
awk -f make_in_line.awk|
sed -f anti_d_hex | 
sed -f anti_trns_p |
sed s'# ##g'|
sed s'#+# #g' |
sed s'#~#\n#g' 

