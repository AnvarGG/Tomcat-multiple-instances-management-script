#!/bin/bash
echo "Start or Stop tomcat server"
str1="start"
str2="stop"
read choice
if [[ "$choice" == "$str1" ]]; then
	echo "Which server do you want to start?(1,2,3)"
	read server
	case $server in
		1)
		bash /opt/tomcat/bin/startup.sh
		;;
		2)
		bash /opt/tomcat1/bin/startup.sh
		;;
		3)
		bash /opt/tomcat2/bin/startup.sh
		;;
		all)
		bash /opt/tomcat/bin/startup.sh
		bash /opt/tomcat1/bin/startup.sh
		bash /opt/tomcat2/bin/startup.sh
		;;
		*)
		echo "wrong input"
		;;
	esac
	
elif [[ "$choice" == "$str2" ]]; then
    echo "Which server do you want to start?(1,2,3)"
	read server
	case $server in
		1)
		bash /opt/tomcat/bin/shutdown.sh
		;;
		2)
		bash /opt/tomcat1/bin/shutdown.sh
		;;
		3)
		bash /opt/tomcat2/bin/shutdown.sh
		;;
		all)
		bash /opt/tomcat/bin/shutdown.sh
		bash /opt/tomcat1/bin/shutdown.sh
		bash /opt/tomcat2/bin/shutdown.sh
		;;
		*)
		echo "wrong input"
		;;
	esac
else
	echo "wrong command"
fi
echo "OPERATION FINISHED"
