#Generate README.md with makefile



#To generate all configurations:
all : README.md

#To generate README.md containing title/date & time/number of line in guessinggame.sh:
README.md :
	echo "# Title: Guessing Game" > README.md
	echo "### Date & Time:" >> README.md
	echo "- $$(date)" >> README.md
	echo "\n**P.S**  number of lines contained in *guessinggame.sh* is: **$$(cat guessinggame.sh | wc -l) lines** " >> README.md

#To remove all new configurations:
mrproper :
	rm README.md

#To clean it all:
clean : mrproper
