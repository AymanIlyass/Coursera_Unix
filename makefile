#Generate README.md with makefile



#To generate all configurations:
all : README.md

#To generate README.md containing title/date & time/number of line in guessinggame.sh:
README.md :
	echo "# Title: Guessing Game" > README.md
	echo "### Date & Time:" >> README.md
	echo "- Date: 10 Mai 2020" >> README.md
	echo "- Time: *03:53* " >> README.md
	echo "\n**P.S:** number of line contained in *guessinggame.sh* is: **27 lines** " >> README.md

#To remove all new configurations:
mrproper :
	rm README.md

#To clean it all:
clean : mrproper
