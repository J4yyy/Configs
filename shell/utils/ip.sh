#!/bin/bash

discord_hook="https://discord.com/api/webhooks/1049710957309468772/rUnmBcpKW25OLIdI-izpQ-VUa_PLjVjnF9HUJP-et_q0esszsSWRwoEHM_--YYDsWVR9"

lanIp="$(hostname -I | cut -d' ' -f1)";
wanIp="$(curl https://ipinfo.io/ip 2>/dev/null)";

description="Public IP: ||  ${wanIp}  ||\nIntern IP: ||  ${lanIp}  ||"
content="{'content':'Raspberry PI\n\nPublic IP: || ${wanIp} ||\nIntern IP: || ${lanIp} ||','embeds':null,'attachments':[]}"

echo "Your private ip is: ${lanIp}";
echo "Your public ip is: ${wanIp}";

curl 'https://discord.com/api/v10/webhooks/1049710957309468772/rUnmBcpKW25OLIdI-izpQ-VUa_PLjVjnF9HUJP-et_q0esszsSWRwoEHM_--YYDsWVR9?wait=true' -X POST -H 'Accept: application/json' -H 'Accept-Encoding: gzip, deflate, br' -H 'Referer: https://discohook.org/' -H 'Content-Type: application/json'-H 'Sec-Fetch-Dest: empty' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: cross-site' -H 'TE: trailers' --data-raw "${content}"