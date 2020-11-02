helpFunction(){
echo "Usage: -a application_name -f folder_to_save_to -n time_to_flip -r coordinates_to_capture -k key_to_press"
echo "\t-a The name of the applicaton i.e. 'Safari'"
echo "\t-f The folder to save all the screenshots to without trailing \/"
echo "\t-n Number of times to loop, this will be how many pages/items you want to capture"
echo "\t-r Region to capture comma separated: x,y,width,height"
echo "\t-k Key to press in between each screenshot, in MacOS keycode\n\t\tcommon keycodes: 234 -> right arrow, 235 -> down arrow"
exit 1 # Exit with failure
}

while getopts "a:f:n:r:k:" opt
do
	case "$opt" in
		a ) paramA="$OPTARG" ;;
		f ) paramF="$OPTARG" ;;
		n ) paramN="$OPTARG" ;;
		r ) paramR="$OPTARG" ;;
		k ) paramK="$OPTARG" ;;
		? ) helpFunction ;;
	esac
done

if [ -z "$paramA" ] || [ -z "$paramF" ] || [ -z "$paramN" ] || [ -z "$paramR" ] || [ -z "$paramK" ] 
then
	helpFunction
fi

osascript -e "tell application \"$paramA\" to activate";
	sleep 5; # To give enough time for window manager to switch

for ((i=0; i<$paramN; i++))
do 
		echo "page $i"
		sleep 1; # To give enough time to switch pages after keycode press
		screencapture -R $paramR -t jpg -x "$paramF/page_$i.jpg";
		sleep .1; # Buffer time
		osascript -e "tell application \"System Events\" to key code \"$paramK\"";
done

