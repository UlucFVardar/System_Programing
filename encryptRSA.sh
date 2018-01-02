#echo "Enter a message to encrypt with RSA procedure with N=187 and e=7 "
#read -p "Your Message : " inputMessage
# our public key is  187 and p1=11 p2=17 e=7

if [ $# -eq 1 ]
then 
	temp=$1
	declare -a list
	i=0
	until [[ "$temp" == "" ]]
	do 
		c="${temp:0:1}"
		temp="${temp:1}"
		list[$i]=$(printf '%d \n' "'$c")
		list[$i]=$(( $(( ${list[$i]} ** 7 )) % 187 ))	
		i=$(($i+1))
	done 
	echo ""
	echo "Encrypted Message of you with respect to RSA procedure is (public key is 187);"
	echo ${list[@]}
	echo ""
	echo ""
elif [ $# -eq 3 ]
then
	if [ $1 == "-sv" ] 
		then
		temp=$2
		declare -a list
		i=0
		until [[ "$temp" == "" ]]
			do 
				c="${temp:0:1}"
				temp="${temp:1}"
				list[$i]=$(printf '%d \n' "'$c")
				list[$i]=$(( $(( ${list[$i]} ** 7 )) % 187 ))	
				i=$(($i+1))
			done 
		touch echo "./"$3
		echo ${list[@]}>$3 		
	elif [ $1 == "-uir" ]
		then
			if [[ -e "$2" && -f "$2" ]]
			then
				temp=`cat "$2"`									
				declare -a list
				i=0
				until [[ "$temp" == "" ]]
				do 
				c="${temp:0:1}"
				temp="${temp:1}"
				list[$i]=$(printf '%d \n' "'$c")
				list[$i]=$(( $(( ${list[$i]} ** 7 )) % 187 ))	
				i=$(($i+1))
				done 
				touch echo "./"$3
				echo ${list[@]}>$3 
			else
				echo 'inputFile is not a file or NOT exist.'
			fi	
	else 
		echo 'wrong typing'
	fi			
else 
	echo 'you must use "functionName -sv string fileNam" (OR) "functionName string" (OR) "functionName -uir inputFileName DestinationFileName"  '
fi

./CShell.out
