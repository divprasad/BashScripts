file="/home/divyae/metaData_ML/data_chen/csv/HostUnique_11.txt"
while read line 
do
ls | grep -c -E "^${line}" >> /home/divyae/bash_scripts/host_inPat.txt  
echo $line

done < "$file"