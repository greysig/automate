#! /bin/bash


#file to add to git: all or one

function autogit {

	echo [1] add all files 
	echo [2] add individual file 
	echo 'What would you like to do? ' 
	read opt
	
	if [ $opt = 1 ];then 
		git add --all
		
	fi


	if [ $opt =  2 ];then
		echo "what is the file name"
		read gitfile
		git add $gitfile	

	fi

	
	echo "Comments: "  
	read  comment 
	
	git commit -m " ' $comment '  " 

	git push -u origin master
		


}

autogit
