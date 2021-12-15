#!/bin/bash
echo "~~~~~~~~~WELCOME TO IUG10~~~~~~~~~~"
echo "~                                ~"
echo "~        Powered by: 1ugu1       ~"
echo "~                                ~"
echo "~ this tool will download        ~"
echo "~ specific files from a site     ~"
echo "~                                ~"
echo "~                                ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

if [ "$1" == "" ]

then
        echo "Type ./iug10 link file"

else 

echo "[+] Downloading all $2 files from the website: $1"

lynx --dump "https://google.com/search?&q=site:$1+ext:$2" | grep "pdf" | cut -d "=" -f2 | egrep -v "site|accounts|14" | sed 's/...$//' > lista_meta.txt
for i in $(cat lista_meta.txt)
do
echo "[+] Downloading $i "


wget -q $i
done

