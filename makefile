README.md : guessinggame.sh
	name=$(basename `pwd`)
	echo "# $$(basename "$$PWD")" >> README.md
	echo "" >> README.md
	echo "Date and time: "`LANG=en_us_88591; date` >> README.md
	echo "" >> README.md
	echo "guessinggame.sh contains"`cat guessinggame.sh | wc -l`" lines." >> README.md

clean: 
	rm README.md