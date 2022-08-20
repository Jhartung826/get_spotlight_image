user=$(whoami)
tdy=$(date "+%m-%d-%Y")
spotlightdir=C:/Users/${user}/AppData/Local/Packages/Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy/LocalState/Assets
image_dest=`pwd`/spotlight_wallpaper
spotlightfiles=$(ls $spotlightdir)
declare -i counter=0
for file in $spotlightfiles
do
	counter+=1
	cp $spotlightdir/$file $image_dest/image_${tdy}_${counter}.jpeg
done
cd $image_dest
explorer .

