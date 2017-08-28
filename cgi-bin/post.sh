#! /bin/sh

echo "Content-type: text/html"
echo ""

read stuff

name=$(echo $stuff | cut -f1 -d'&'|cut -f2 -d'=')
option=$(echo $stuff | cut -f2 -d'&' |cut -f2 -d'=')

if [ "$option" = "yes" ]
then
   echo "$name" >>  server.c
   echo " <form action="chatpage.html" method="post"> "
   echo " <input type="hidden" name="name" value="$name"> "
   echo " <input type="submit" value="Start Session!">"
   echo " </form> "
   exit 0
else
   echo "You have decided to not use the chat board!"
   exit 1
fi


exit 0
