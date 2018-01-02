if [ $# -eq 0 ]
then
	echo "WRONG NUMBER OF ARGUMENT"
	echo "USAGE : compile [FILE PATH]... "
	echo "Find output in Output.txt"
	exit 0
elif [ $# -gt 2 ]
then
	echo "WRONG NUMBER OF ARGUMENT"
	echo "USAGE : compile [FILE PATH]... "
	echo "Find output in Output.txt"
else
		fileName=$1	
		codeName="${fileName##*/}"
		filePath=${fileName%/*}"/"
		oldDir=`pwd`"/"
		cd $filePath
		if [[ $1 == *".c" ]]
		then
			gcc $1  
			./a.out -> $codeName"_output.txt"
		elif [[ $1 == *".py" ]]
		then
			python $codeName -> $codeName"_output.txt"
		elif [[ $1 == *".sh" ]]
		then
			chmod 777 $codeName
			./$codeName -> $codeName"_output.txt"
		elif [[ $1 == *".java" ]]
		then
			javac $codeName -> $codeName"_output.txt"
		else
			echo "Error! can not compile ......"
		fi
		cd $oldDir
	 
	 
fi
./CShell.out
