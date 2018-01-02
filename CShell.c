/*
 * CShell.c
 * 
 * Copyright 2017 MuhammedKostekli <kosteklim@mef.edu.tr>
 *                UluçFurkanVardar <vardaru@mef.edu.tr>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
int main(int argc, char *argv[])
{
	char *pch[10];
	printf("Muhammed_Uluc_Bash-> ");
	while(1)
	{
		char string[256];
		fgets(string,256,stdin);
		pch[0] = strtok (string," ");
		int counter=0;
		while (pch[counter] != NULL)
		{
			counter++;
			pch[counter] = strtok (NULL, " ");
		}
		pch[counter-1][strlen(pch[counter-1])-1]=0;
		if(!strcmp(pch[0],"exit")){
			break;
		}
		//int i;
		/*for(i=0;i<counter;i++){
			printf("%s\n",pch[i]);
			
		}*/
		
		if(strcmp(pch[0],"classify") == 0){
			char *cmdargs[] = {"/bin/bash","./EditFolders.sh",pch[1],pch[2],pch[3],NULL};
			//if(fork() != 0)
				execv(cmdargs[0], cmdargs);  
		}
		if(strcmp(pch[0],"extr") == 0){
			char *cmdargs[] = {"/bin/bash","./ExtractFolders.sh",pch[1],pch[2],pch[3],NULL};
			//if(fork() != 0)
				execv(cmdargs[0], cmdargs);  
		}
		if(strcmp(pch[0],"encRSA") == 0){
			
			char *cmdargs[] = {"/bin/bash","./encryptRSA.sh",pch[1],pch[2],pch[3],NULL};
			//if(fork() != 0)
				execv(cmdargs[0], cmdargs);  
		}
		if(strcmp(pch[0],"sstof") == 0){
			
			char *cmdargs[] = {"/bin/bash","./searchStackOverFlow.sh",pch[1],pch[2],pch[3],pch[4],pch[5],pch[6],pch[7],pch[8],pch[9],pch[10],NULL};
			//if(fork() != 0)
				execv(cmdargs[0], cmdargs);  
		}
		if(strcmp(pch[0],"mkfile") == 0){
			
			char *cmdargs[] = {"/bin/bash","./MakeFile.sh",NULL};
			//if(fork() != 0)
				execv(cmdargs[0], cmdargs);  
		}
		if(strcmp(pch[0],"compile") == 0){
			
			char *cmdargs[] = {"/bin/bash","./Compiler.sh",pch[1],NULL};
			//if(fork() != 0)
				execv(cmdargs[0], cmdargs);  
		}
		printf("Muhammed_Uluc_Bash-> ");
	}
	return 0;
}
//extract /home/muhammedkostekli/Desktop/denemeKlasörü /home/muhammedkostekli/Desktop



