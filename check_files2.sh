
f
while IFS= read -r f; 

file="/home/divyae/metaData_ML/data_chen/csv/HostUnique_11.txt"
folder="/hosts/linuxhome/mgx/tmp/PATRIC/20170614/"

while read line 

do
    if [[ -e $/"^${line}" ]]; then
        echo (ls | grep -c -E "^${line}") >> /home/divyae/bash_scripts/host_inPat.txt  
   
    fi
done < "$file"