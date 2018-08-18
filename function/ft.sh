function msfconsole()
{
cd $HOME
pkg install wget -y
wget https://Auxilus.github.io/metasploit.sh
bash metasploit.sh
echo "Whether or not Configure the quick start PostgreSQL command y/n"
read choose
case $choose in 
	y|Y)
		echo -e "Enter your custom alias"
		read customalias
		bash
		echo -e "alias \${customalias}\=\"pg_ctl -D $PREFIX/var/lib/postgresql start\"" > $PREFIX/etc/bash.bashrc
	 ;;
     n|N)
		echo "Done"
	 ;;
esac
}
	


function sqlmap()
{
pkg install git python2
git clone https://github.com/sqlmapproject/sqlmap.git
mv sqlmap ~
echo "Do you want to set up a quick start command y/n"
read choose
case $choose in 
	y|Y)
		echo -e "alias sqlmap=\"python2 $HOME/sqlmap/sqlmap.py\"" >> $PREFIX/etc/bash.bashrc
		echo "setup is finished, you only need to input sqlmap in the terminal to start sqlmap."
		;;
        n|N)
		echo "Done"
		;;
esac
}



function vim()
{
pkg install vim -y
echo "Done"
}



function hexo()
{
pkg install nodejs -y
npm install hexo-cil -g
echo "Done"
}



function nmap()
{
pkg install nmap -y
echo "Done"
}



function red_hawk()
{
pkg install git php
git clone https://github.com/Tuhinshubhra/RED_HAWK
mv RED_HAWK ~
echo "Do you want to set up a quick start command y/n"
read choose
case $choose in
	y|Y)
		echo -e "alias rhawk=\"php $HOME/RED_HAWK\"" >> $PREFIX/etc/bash.bashrc
		echo "Done"
		;;
	n|N)
		echo "Done"
		::
esac
}



function sqlscan()
{
apt install git php
git clone http://www.github.com/Cvar1984/sqlscan
mv sqlscan ~
echo "Do you want to set up a quick start command y/n"
read choose
case $choose in 
	y|Y)
		echo -e "alias sqlscan=\"php $HOME/sqlscan/sqlscan.php\"" >> $PREFIX/etc/bash.bashrc
		echo "Done"
		;;
	n|N)
		echo "Done"
		;;
esac

}



function xattacker()
{
pkg install git
cd $HOME
git clone https://github.com/Moham3dRiahi/XAttacker.git
cd XAttacker
chmod +x termux-install.sh
bash termux-install.sh

echo "Done If prompted for error, please try the XAttacketfix in the menu."
}



function xattackerfix()
{
cd $HOME/XAttacker
echo "please enter a number"
select error in "HTTP/Request.pm" "LWP/UserAgent.pm"
do
	case $error in 
		HTTP/Request.pm)
			cpan HTTP/Request.pm
			break
			;;
		LWP/UserAgent.pm)
			cpan LWP/UserAgent.pm
			break
			;;
	esac
done

}



function rsf()
{
cd $HOME
pkg install python2 python git
git clone https://github.com/threat9/routersploit.git
cd routersploit
pip install -r requirements.txt
echo "Do you want to set up a quick start command y/n"
read choose
case $choose in
	y|Y)
		echo -e "alias rsf=\"python $HOME/routersploit/rsf.py\"" >> $PREFIX/etc/bash.bashrc
		echo -e "quick start command is \"rsf\""
		;;
	n|N)
		echo -e "Done"
		;;
esac

}



function wsf()
{
cd $HOME
pkg install python2 git
pip install scapy
git clone https://github.com/websploit/websploit.git
echo "Do you want to set up a quick start command y/n"
read choose
case $choose in
	y|Y)
		echo -e "alias wsf=\"python2 $HOME/webslpoit/webslpoit\"" >>
		$PREFIX/etc/bash.bashrc
		;;
	n|N)
		echo "Done"
		;;
esac

}




function hexogitblog()
{
echo "tell me where is you blog path"
read &bp
cd $bp
echo "tell me what name is your blog dir name"
read bdn
mkdir &bdn
cd &bdn
hexo init
npm install
npm install hexo-deployer-git –save
echo "tell me your github username"
read username
git config –global user.name “&username”
echo "tell me your github email"
git config –global user.email “&email”
ssh-keygen -t rsa -C “&email”

}

function owscan()
{
pkg install php git
cd $HOME
git clone https://github.com/Gameye98/OWScan.git
echo "Do you want to set up a quick start command y/n"
read choose
case $choose in
	y|Y)
		echo -e "alias owscan=\"bash $HOME/OWScan/owscan.php\"" >>
		$PREFIX/etc/bash.bashrc
		echo -e "quick start command is \"owscan\""
		;;
	n|N)
		echo "Done"
		;;
esac

}


function msfpc()
{
pkg install git
cd $HOME
git clone https://github.com/g0tmi1k/mpc.git
cd mpc
chmod +x msfpc.sh
echo "Do you want to set up a quick start command y/n"
read choose
case $choose in
	y|Y)
		echo -e "alias msfpc=\"bash $HOME/mpc/msfpc.sh\"" >>
		$PREFIX/etc/bash.bashrc
		echo -e "quick start command is \"msfpc\""
		;;
	n|N)
		echo "Done"
		;;
esac}
