README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "Date and Time: $$(date)" >> README.md
	echo "Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean
clean:
	rm README.md