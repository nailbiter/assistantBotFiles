.PHONY: all save files test
.INTERMEDIATE : merged.scm

SCHEMEFLAGS=--quiet
GUILEFLAGS=
SCHEME=scheme $(SCHEMEFLAGS) < 

all: habits.json tests.json
	#runBot.sh
files: habits.json tests.json

tests.json : tests.1.json tests.2.json tests.3.json
	cat tests.1.json > $@
	cat tests.2.json >> $@
	cat tests.3.json >> $@
save:
	mv assistantbot.jar assistantbot.1.jar
clean:
	rm -rf `cat .gitignore`

habits.json: merged.pl
	perl merged.pl > habits.json

merged.pl: habits.pl macro.pl
	cat macro.pl > merged.pl
	cat habits.pl >> merged.pl
