#!/bin/bash
# i = интернет есть
# i = интернета нет
i=1
while true; do
ping -c1 8.8.8.8 &> /dev/null
result=$?

if [[ "$result" -eq 0 && "$i" -eq 0 ]]
then 
echo "$(date +%d-%m-%y) - интернет появился в $(date +%H:%M)" >> journal.txt
echo "$(date +%d-%m-%y) - интернет повился в $(date +%H:%M)"
i=1
elif [[ "result" -ne 0 && "$i" -eq 1 ]];
then 
echo "$(date +%d-%m-%y) - инетрнет пропал в $(date +%H:%M)" >> journal.txt
echo "$(date +%d-%m-%y) - интернет пропал в $(date =%H:%M)"
i=0
fi
sleep 5
done
exit 0
