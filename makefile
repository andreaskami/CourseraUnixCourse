readme.md:
	echo "Title:" >> readme.md
	echo "Coursera Unix Course" >> readme.md
	echo "Date and time:" >> readme.md
	date -u >> readme.md
	echo "Number of lines:" >> readme.md
	cat guessinggame.sh | wc -l >> readme.md

clean:
	rm readme.md
