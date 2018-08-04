#!/bin/bash

#while :
#do
clear
BLACK="\033[0;30m"
BLUE="\033[0;34m"
GREEN="\033[0;32m"
CYAN="\033[0;36m"
RED="\033[0;31m"
PURPLE="\033[0;35m"
BROWN="\033[0;33m"
WHITE="\033[1;37m"
COLOR_RESET="\033[0m"


logo()
{
readonly sw=$[`tput cols`]
sw1=$sw
while(( $sw1>0 ))
do
echo -e ">\c"
	let sw1--
done
sw2=$sw
echo -e ">\c"
d=`expr $sw2 - 2`

until [ $d -eq 0 ];
do
	echo -e " \c"
	let d--	
done
echo "<"
echo -e ">\c"
sw3_1=`expr $sw - 2`
sw3_2=`expr $sw3_1 - 37`
sw3_3=`expr $sw3_2 / 2`
sw3_31=$sw3_3

until [ $sw3_31 -eq 0 ]
do
	echo -e " \c"
	let sw3_31--
done
echo -e "Termux Tool Installer by Scriptkiddies\c"
until [ $sw3_3 -eq 1 ]
do
	echo -e " \c"
	let sw3_3--
done
echo "<"

sw4=$sw
echo -e ">\c"
sw4_1=`expr $sw4 - 2`

until [ $sw4_1 -eq 0 ];
do
	        echo -e " \c"
		 let sw4_1--
done
echo "<"
sw5=$sw
while ((sw5>1))
do
	echo -e ">\c"
	let sw5--
done
echo ">"
}

logo

menu(){
echo -e ">Please enter the number before selection"
echo -e ">1.metasploit-framework"
echo -e ">2.vim"
echo -e ">3.sqlmao"
echo -e ">4.routersploit"
echo -e ">5.hexo"
echo -e "==============================================================="
echo -e "(ง •̀_•́)ง >>\c"
}
#read pc
#echo $pc


msfconsole()
{
cd $HOME
pkg install wget
wget https://Auxilus.github.io/metasploit.sh
bash metasploit.sh
echo "Whether or not Configure the quick start PostgreSQL command y/n"
read select
case select in 
	y)
		echo -e "Enter your custom alias"
		read customalias
		bash
		echo -e "alias \${customalias}\=\"pg_ctl -D $PREFIX/var/lib/postgresql start\"" > $PREFIX/etc/bash.bashrc
	 ;;
        n)
		echo "metasploit-framework Installation success"
		
	 ;;
esac
}
	


sqlmap(){
apt update && apt upgrade
apt install git python2
git clone https://github.com/sqlmapproject/sqlmap.git
mv sqlmap ~
}
        






#done
