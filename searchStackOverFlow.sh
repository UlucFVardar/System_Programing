

if [ $# -gt 1 ]  
then
	searchStr=$1
	i=2
	until [[ $(($i-1)) -eq $#  ]]
	do
	searchStr=$searchStr+${@:$i:1}
	i=$(($i+1))
	done
elif [ $# -eq 1 ]
then	
	searchStr=$1
else 
	echo 'you must use at least one search key'
	exit
fi

searchStr=https://stackoverflow.com/search?q=$searchStr

if which gnome-open > /dev/null
 then
  gnome-open "$searchStr"
else
  echo "Could not detect the web browser to use."
fi

./CShell.out
