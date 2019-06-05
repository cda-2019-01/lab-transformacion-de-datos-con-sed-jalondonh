# Escriba su código aquí
cat data.csv > out1.csv
gawk '{print gensub(/([0-9][0-9])\/([0-9][0-9])\/([0-9]+[0-9])/,"20\\3-\\2-\\1",1)}' out1.csv > out2.csv
gawk '{print gensub(/([0-9])\/([0-9])\/([0-9]+)/,"\\3-0\\2-0\\1",1)}' out2.csv > out3.csv
gawk '{gsub(/n/,"\N");gsub(/;N/,";\\N");gsub(/;;/,";\\N;");gsub(/;$/,";\\N");print}' out3.csv > out4.csv
gawk '{print gensub(/([0-9]{1,})(,)(.)$/,"\\1.\\3",1)}' out4.csv > out5.csv
gawk '{gsub(/;/,",");print}' out5.csv > out6.csv
gawk '{print toupper($0)}' out6.csv > out7.csv
cat out7.csv
rm out*