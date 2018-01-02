#makefilemaker

	
str=`ls *.c`
if [ str != "" ]
then 
	makefilestr1="makefile : "$str
	makefilestr2=" gcc -o makefile "$str"  -I."
	echo $makefilestr1 >makefile
	echo $makefilestr2 >>makefile
	chmod 777 makefile 
else
	echo 'There is no .c file in this folder'
fi
./CShell.out
