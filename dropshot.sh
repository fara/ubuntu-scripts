# Change DBUSER to match your Dropbox UID. For more intstructions, see above.
DBUSER=10944292
TIME=$(date +%Y%m%d%H%M%S)
PUB=~/Dropbox/Public/screenshots/
if [ -d $PUB ]
then
cd $PUB
else
mkdir $PUB
cd $PUB
fi
sleep 1
gnome-screenshot -a -f $TIME.jpg
sleep 1
LAST=$(find . -cmin -1 -iname "*.jpg" | tail -n 1 | sed 's!.*/!!')
URL1=http://dl.dropbox.com/u
URL2=screenshots
echo "$URL1/$DBUSER/$URL2/$LAST" | xclip -sel clip
exit 0
