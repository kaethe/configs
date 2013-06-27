if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual-monitor
        if [ `xrandr | grep VGA1 | grep -c ' connected '` -eq 1  ]; then
	        xrandr --output HDMI1 --auto --primary --output VGA1 --auto --right-of HDMI1
	fi
else
	xrandr --output HDMI1 --auto
fi 

