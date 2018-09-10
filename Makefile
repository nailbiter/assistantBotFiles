.PHONY: all save files
.INTERMEDIATE : merged.scm

SCHEMEFLAGS=--quiet
GUILEFLAGS=
SCHEME=scheme $(SCHEMEFLAGS) < 

all: habits.json tests.json
	runBot.sh
files: habits.json tests.json

merged.scm : habits.scm macro.scm
	cat macro.scm > merged.scm
	cat habits.scm >> merged.scm
habits.json : merged.scm
	$(SCHEME) merged.scm |grep -v ';' > $@
	rm -rf merged.scm
tests.json : tests.1.json tests.2.json tests.3.json
	cat tests.1.json > $@
	cat tests.2.json >> $@
	cat tests.3.json >> $@
save:
	mv assistantbot.jar assistantbot.1.jar
clean:
	rm -rf `cat .gitignore`
