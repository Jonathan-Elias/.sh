for ip in $(seq 224 239);
do
host -t ptr 192.168.0.$ip |grep -v "192.168.0" | cut -d " " -f 5;
done 
