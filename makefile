create_readme.md:
	echo "Title: Homehork" > README.md
	date >> README.md
	ls -l | grep ^- | wc -l  >> README.md
