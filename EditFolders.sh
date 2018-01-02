if [ $# -eq 0 ]
then
	echo "WRONG NUMBER OF ARGUMENT"
	echo "USAGE : classify [FILE PATH]... [TARGET FILE PATH]..."
	exit 0
elif [ $# -gt 2 ]
then
	echo "WRONG NUMBER OF ARGUMENT"
	echo "USAGE : classify [FILE PATH]... [TARGET FILE PATH]..."
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
		filename=$1/$i
	
		fileName=$i	
		folderType="${fileName#*.}"
	
	
	
		if [[ -d $targetfolder/$folderType"Files" ]]
		then
			mv $filename $targetfolder/$folderType"Files"
		else
			#targetfolder=$targetfolder/txtFiles
			mkdir $targetfolder/$folderType"Files"
			mv $filename $targetfolder/$folderType"Files"
		fi
	
	 
	done 
fi
./CShell.out
