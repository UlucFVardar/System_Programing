if [ $# -eq 0 ]
then
	echo "WRONG NUMBER OF ARGUMENT"
	echo "USAGE : extr [FILE PATH]... [TARGET FILE PATH]..."
	exit 0
elif [ $# -gt 2 ]
then
	echo "WRONG NUMBER OF ARGUMENT"
	echo "USAGE : extr [FILE PATH]... [TARGET FILE PATH]..."
else
	mapfile -t folderContent < <( ls $1)

	targetfolder=""

	if [[ $2 == "" ]]
	then
		targetfolder=$1
	else
		targetfolder=$2
	fi 

	for i in "${folderContent[@]}"; do
		if [[ $i == *".zip" ]]
		then
			echo "$i is extracting......"
			filename=$1/$i
			unzip $filename -d $targetfolder
		elif [[ $i == *".rar" ]]
		then
			echo "$i is extracting......"
			filename=$1/$i
			rar x $filename $targetfolder
		
		elif [[ $i == *".tar"* ]]
		then
			echo "$i is extracting......"
			filename=$1/$i
			tar -xvf $filename -C $targetfolder
		else
			echo "$i in not extracting......"
		fi
	 
	done 
fi
./CShell.out
